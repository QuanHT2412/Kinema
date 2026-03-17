using KinemaAPI.Data;
using KinemaAPI.DbInitializer;
using KinemaAPI.Mappings;
using KinemaAPI.Middlewares;
using KinemaAPI.Models.Domain;
using KinemaAPI.Repositories;
using KinemaAPI.Repositories.Impl;
using KinemaAPI.Services;
using KinemaAPI.Services.Impl;
using KinemaAPI.Utils;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.OData;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.FileProviders;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OData.ModelBuilder;
using sib_api_v3_sdk.Client;

var builder = WebApplication.CreateBuilder(args);

// add cors policy
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowClientWebsite", policy =>
    {
        policy.WithOrigins(builder.Configuration["KinemaClients:Website"] ?? "http://localhost:3001")
            .AllowAnyHeader()
            .AllowAnyMethod()
            .AllowCredentials();

    });
});

// Build OData EDM model
var odataBuilder = new ODataConventionModelBuilder();
odataBuilder.EntitySet<Province>("Provinces");

// Add services to the container.
builder.Services.AddControllers(options =>
{
    // Content Negotiation: tôn trọng Accept header của client
    options.RespectBrowserAcceptHeader = true;
    // Trả 406 Not Acceptable nếu format không được hỗ trợ
    options.ReturnHttpNotAcceptable = true;
})
.AddXmlSerializerFormatters()                          // hỗ trợ XML (application/xml)
.AddOData(options => options                           // OData query options
    .Select()
    .Filter()
    .OrderBy()
    .Expand()
    .Count()
    .SetMaxTop(100)
    .AddRouteComponents("odata", odataBuilder.GetEdmModel()));

// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddHttpContextAccessor();

// configure Brevo API client
Configuration.Default.ApiKey.Add("api-key", builder.Configuration["BrevoApi:ApiKey"]);

// configure setting class
builder.Services.Configure<VNPaySettings>(builder.Configuration.GetSection("VNPay"));

// declare dependency injections
builder.Services.AddScoped<ITokenService, TokenService>();
builder.Services.AddScoped<IEmailService, EmailService>();
builder.Services.AddScoped<IUnitOfWork, UnitOfWork>();
builder.Services.AddScoped<IImageService, ImageService>();
builder.Services.AddScoped<IDbInitializer, DbInitializer>();
builder.Services.AddScoped<IVNPayService, VNPayService>();
builder.Services.AddScoped<IQRCodeService, QRCodeService>();


// add AutoMapper
builder.Services.AddAutoMapper(typeof(AutoMapperProfiles));

// add db context
builder.Services.AddDbContext<KinemaDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("KinemaConnectionString")));

// register Identity services
builder.Services.AddIdentity<ApplicationUser, IdentityRole>(options =>
{
    options.User.RequireUniqueEmail = true;
    options.Password.RequireDigit = true;
    options.Password.RequiredLength = 6;
    options.Password.RequireLowercase = true;
    options.Password.RequireUppercase = true;
    options.Password.RequireNonAlphanumeric = false;
    options.Password.RequiredUniqueChars = 1;

    options.SignIn.RequireConfirmedEmail = true;
}).AddEntityFrameworkStores<KinemaDbContext>()
    .AddDefaultTokenProviders();

// add JWT authentication
builder.Services.AddAuthentication(options =>
{
    options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
    options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
}).AddJwtBearer(options =>
{
    options.TokenValidationParameters = new TokenValidationParameters
    {
        ValidateIssuer = true,
        ValidateAudience = true,
        ValidateLifetime = true,
        ValidateIssuerSigningKey = true,
        ValidIssuer = builder.Configuration["JWT:Issuer"],
        ValidAudience = builder.Configuration["JWT:Audience"],
        IssuerSigningKey = new SymmetricSecurityKey(System.Text.Encoding.UTF8.GetBytes(builder.Configuration["JWT:Key"] ?? "default_secret_key")),
    };
});

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseMiddleware<ExceptionHandler>();
app.UseHttpsRedirection();
app.UseCors("AllowClientWebsite");
app.UseAuthentication();
app.UseAuthorization();

// serving static files
app.UseStaticFiles(new StaticFileOptions
{
    FileProvider = new PhysicalFileProvider(Path.Combine(builder.Environment.ContentRootPath, "images")),
    RequestPath = "/images"
});

app.MapControllers();

SeedDatabase();

app.Run();

void SeedDatabase()
{
    using (var scope = app.Services.CreateScope())
    {
        scope.ServiceProvider.GetRequiredService<IDbInitializer>().Initialize();
    }
}
