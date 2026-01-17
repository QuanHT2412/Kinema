using KinemaAPI.Data;
using KinemaAPI.Models.Domain;
using KinemaAPI.Utils;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.OData;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.FileProviders;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OData.ModelBuilder;

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

// declare dependency injections


// add db context
builder.Services.AddDbContext<KinemaDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("KinemaConnectionString")));

// register Identity services
builder.Services.AddIdentity<ApplicationUser, IdentityRole>(options =>
{
    options.User.RequireUniqueEmail = true;
    options.Password.RequireDigit = true;
    options.Password.RequiredLength = 8;
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

app.UseHttpsRedirection();
app.UseCors("AllowClientWebsite");
app.UseAuthentication();
app.UseAuthorization();

app.MapControllers();

app.Run();
