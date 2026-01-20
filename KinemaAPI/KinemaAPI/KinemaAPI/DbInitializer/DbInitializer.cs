
using KinemaAPI.Data;
using KinemaAPI.Models.Domain;
using KinemaAPI.Utils;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;

namespace KinemaAPI.DbInitializer
{
    public class DbInitializer : IDbInitializer
    {
        private readonly KinemaDbContext _context;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;

        public DbInitializer(KinemaDbContext context, UserManager<ApplicationUser> userManager, RoleManager<IdentityRole> roleManager)
        {
            _context = context;
            _userManager = userManager;
            _roleManager = roleManager;
        }

        public void Initialize()
        {
            // Apply pending migrations
            try
            {
                if (_context.Database.GetPendingMigrations().Count() > 0)
                    _context.Database.Migrate();
            }
            catch { }

            SeedRolesAndAdmin();
            SeedProvinces();
            SeedTheaters();
            SeedScreensAndSeats();
            SeedMovies();
            SeedShowTimes();
            SeedConcessions();
            SeedPromotions();
            SeedManagersAndEmployees();
            SeedCustomers();
        }

        // ─────────────────────────────────────────────────────────────────────
        // ROLES & ADMIN
        // ─────────────────────────────────────────────────────────────────────
        private void SeedRolesAndAdmin()
        {
            // Seed roles independently
            foreach (var role in new[] { Constants.Role_Customer, Constants.Role_Employee, Constants.Role_Admin, Constants.Role_Manager })
            {
                if (!_roleManager.RoleExistsAsync(role).GetAwaiter().GetResult())
                    _roleManager.CreateAsync(new IdentityRole(role)).GetAwaiter().GetResult();
            }

            // Seed admin user independently
            if (_userManager.FindByEmailAsync("admin@kinema.com").GetAwaiter().GetResult() != null)
                return;

            var adminUser = new ApplicationUser
            {
                UserName = "admin@kinema.com",
                Email = "admin@kinema.com",
                EmailConfirmed = true,
                DisplayName = "Super Admin",
                PhoneNumber = "0900000000",
            };
            _userManager.CreateAsync(adminUser, "Admin@123").GetAwaiter().GetResult();

            var admin = _context.ApplicationUsers.First(u => u.Email == "admin@kinema.com");
            _userManager.AddToRoleAsync(admin, Constants.Role_Admin).GetAwaiter().GetResult();
        }

        // ─────────────────────────────────────────────────────────────────────
        // PROVINCES  (id 1,2 already seeded via HasData in OnModelCreating)
        // ─────────────────────────────────────────────────────────────────────
        private void SeedProvinces()
        {
            var newProvinces = new[]
            {
                "Đà Nẵng",
                "Cần Thơ",
            };

            foreach (var name in newProvinces)
            {
                if (!_context.Provinces.Any(p => p.Name == name))
                    _context.Provinces.Add(new Province { Name = name });
            }
            _context.SaveChanges();
        }

        // ─────────────────────────────────────────────────────────────────────
        // THEATERS
        // ─────────────────────────────────────────────────────────────────────
        private void SeedTheaters()
        {
            if (_context.Theaters.Any()) return;

            var haNoi   = _context.Provinces.First(p => p.Name == "Hà Nội");
            var hcm     = _context.Provinces.First(p => p.Name == "Hồ Chí Minh");
            var daNang  = _context.Provinces.First(p => p.Name == "Đà Nẵng");
            var canTho  = _context.Provinces.First(p => p.Name == "Cần Thơ");

            _context.Theaters.AddRange(
                new Theater { Name = "Kinema Hoàn Kiếm",   Address = "12 Đinh Tiên Hoàng, Hoàn Kiếm",   Phone = "0241234567", Email = "hoankiem@kinema.com",   Description = "Rạp trung tâm Hà Nội.",   ProvinceId = haNoi.Id  },
                new Theater { Name = "Kinema Cầu Giấy",    Address = "91 Trần Thái Tông, Cầu Giấy",      Phone = "0241234568", Email = "caugiay@kinema.com",     Description = "Rạp khu vực Cầu Giấy.",   ProvinceId = haNoi.Id  },
                new Theater { Name = "Kinema Quận 1",      Address = "45 Lê Lợi, Quận 1",                Phone = "0281234567", Email = "quan1@kinema.com",        Description = "Rạp trung tâm TP.HCM.",   ProvinceId = hcm.Id    },
                new Theater { Name = "Kinema Bình Thạnh",  Address = "200 Điện Biên Phủ, Bình Thạnh",    Phone = "0281234568", Email = "binhthanh@kinema.com",    Description = "Rạp Bình Thạnh.",          ProvinceId = hcm.Id    },
                new Theater { Name = "Kinema Hải Châu",    Address = "78 Hùng Vương, Hải Châu",          Phone = "0511234567", Email = "haichau@kinema.com",      Description = "Rạp trung tâm Đà Nẵng.",  ProvinceId = daNang.Id },
                new Theater { Name = "Kinema Ninh Kiều",   Address = "36 Hai Bà Trưng, Ninh Kiều",       Phone = "0711234567", Email = "ninhkieu@kinema.com",     Description = "Rạp trung tâm Cần Thơ.",  ProvinceId = canTho.Id }
            );
            _context.SaveChanges();
        }

        // ─────────────────────────────────────────────────────────────────────
        // SCREENS & SEATS
        // ─────────────────────────────────────────────────────────────────────
        private void SeedScreensAndSeats()
        {
            if (_context.Screens.Any()) return;

            var theaters = _context.Theaters.ToList();
            var screensToAdd = new List<Screen>();

            foreach (var theater in theaters)
            {
                screensToAdd.Add(new Screen { Name = "Screen 01", TheaterId = theater.Id, Rows = 6, Columns = 8 });
                screensToAdd.Add(new Screen { Name = "Screen 02", TheaterId = theater.Id, Rows = 5, Columns = 10 });
            }

            _context.Screens.AddRange(screensToAdd);
            _context.SaveChanges();

            // Generate seats for every screen
            var screens = _context.Screens.ToList();
            var seatsToAdd = new List<Seat>();
            var rowLetters = "ABCDEFGHIJ";

            foreach (var screen in screens)
            {
                for (int r = 0; r < screen.Rows; r++)
                {
                    string rowLetter = rowLetters[r].ToString();
                    string seatType = r < 2 ? Constants.SeatType_Vip : Constants.SeatType_Normal;

                    for (int c = 1; c <= screen.Columns; c++)
                    {
                        seatsToAdd.Add(new Seat
                        {
                            SeatRow    = rowLetter,
                            SeatNumber = c,
                            ScreenId   = screen.Id,
                            SeatType   = seatType,
                        });
                    }
                }
            }

            _context.Seats.AddRange(seatsToAdd);
            _context.SaveChanges();
        }

        // ─────────────────────────────────────────────────────────────────────
        // MOVIES
        // ─────────────────────────────────────────────────────────────────────
        private void SeedMovies()
        {
            var movies = new[]
            {
                // Đã ngừng chiếu (IsActive = false)
                new { Title = "Kidnapped: Elizabeth Smart", Genre = "Crime",      Director = "Chris Bessounian", Cast = "Alana Boden, Skeet Ulrich",         Description = "Câu chuyện có thật về Elizabeth Smart bị bắt cóc năm 2002.", Duration = 88,  Release = new DateOnly(2017, 11, 18), IsActive = false, PosterUrl = "download (6).jpg"    },

                // Đang chiếu (IsActive = true, có showtime)
                new { Title = "Inception",                  Genre = "Sci-Fi",     Director = "Christopher Nolan",  Cast = "Leonardo DiCaprio, Joseph Gordon-Levitt", Description = "Tên trộm xâm nhập vào giấc mơ để đánh cắp bí mật.",         Duration = 148, Release = new DateOnly(2010, 7, 16),  IsActive = true,  PosterUrl = "b7978e2f-b463-4cb4-a005-65ae052e85de.jpg" },
                new { Title = "Interstellar",               Genre = "Sci-Fi",     Director = "Christopher Nolan",  Cast = "Matthew McConaughey, Anne Hathaway",      Description = "Hành trình vượt dải ngân hà để tìm ngôi nhà mới cho nhân loại.", Duration = 169, Release = new DateOnly(2014, 11, 7), IsActive = true,  PosterUrl = "4cbc2f69-56eb-45b2-9106-55c6ce08d586.jpg" },
                new { Title = "Murder Report",              Genre = "Thriller",   Director = "James Hyun",         Cast = "Park Seo-joon, Han So-hee",               Description = "Thám tử điều tra vụ án mạng bí ẩn trong lòng thành phố.",     Duration = 112, Release = new DateOnly(2025, 8, 10),  IsActive = true,  PosterUrl = "download.jpg"             },
                new { Title = "The Rip",                    Genre = "Action",     Director = "Antoine Fuqua",      Cast = "Joel Kinnaman, Eiza González",            Description = "Đội đặc nhiệm thực hiện nhiệm vụ giải cứu con tin nguy hiểm.", Duration = 118, Release = new DateOnly(2025, 9, 5),   IsActive = true,  PosterUrl = "download (2).jpg"         },
                new { Title = "The Swedish Connection",     Genre = "Thriller",   Director = "Magnus Martens",     Cast = "Gustaf Skarsgård, Rebecca Ferguson",      Description = "Điệp viên Thụy Điển đối mặt với tổ chức tội phạm xuyên quốc gia.", Duration = 124, Release = new DateOnly(2025, 10, 3),  IsActive = true,  PosterUrl = "download (5).jpg"         },
                new { Title = "War Machine",                Genre = "Action",     Director = "David Michôd",       Cast = "Brad Pitt, Tilda Swinton",                Description = "Vị tướng lừng danh đối mặt với cuộc chiến không hồi kết.",    Duration = 122, Release = new DateOnly(2025, 7, 22),  IsActive = true,  PosterUrl = "download (7).jpg"         },

                // Sắp chiếu (IsActive = true, chưa có showtime)
                new { Title = "Lilo & Stitch",              Genre = "Animation",  Director = "Dean Fleischer Camp", Cast = "Maia Kealoha, Sydney Agudong",           Description = "Cô bé Lilo kết bạn với sinh vật ngoài hành tinh tên Stitch.",  Duration = 108, Release = new DateOnly(2026, 5, 23),  IsActive = true,  PosterUrl = "31b5233a-2e41-41e6-94bf-f3f270769fa8.jpg" },
                new { Title = "Cosmic Princess Kaguya",     Genre = "Animation",  Director = "Yuki Tanaka",         Cast = "Kana Hanazawa, Hiroshi Kamiya",           Description = "Công chúa từ vũ trụ bắt đầu hành trình khám phá trái đất.",   Duration = 115, Release = new DateOnly(2026, 6, 14),  IsActive = true,  PosterUrl = "download (1).jpg"         },
                new { Title = "People We Meet on Vacation", Genre = "Romance",    Director = "Alex Scharfman",      Cast = "Victoria Justice, Dylan Sprouse",         Description = "Hai người bạn thân tìm lại tình cảm qua chuyến du lịch hè.",  Duration = 103, Release = new DateOnly(2026, 7, 4),   IsActive = true,  PosterUrl = "download (3).jpg"         },
                new { Title = "From the Ashes: The Pit",    Genre = "Drama",      Director = "Shawn Levy",          Cast = "Zendaya, Florence Pugh",                  Description = "Bốn cô gái vượt qua nghịch cảnh để tìm lại chính mình.",      Duration = 130, Release = new DateOnly(2026, 8, 21),  IsActive = true,  PosterUrl = "download (4).jpg"         },
            };

            foreach (var m in movies)
            {
                var existing = _context.Movies.FirstOrDefault(x => x.Title == m.Title);
                if (existing == null)
                {
                    _context.Movies.Add(new Movie
                    {
                        Title       = m.Title,
                        Genre       = m.Genre,
                        Director    = m.Director,
                        Cast        = m.Cast,
                        Description = m.Description,
                        Duration    = m.Duration,
                        ReleaseDate = m.Release,
                        IsActive    = m.IsActive,
                        PosterUrl   = m.PosterUrl,
                        TrailerUrl  = null,
                    });
                }
                else
                {
                    if (existing.PosterUrl == null) existing.PosterUrl = m.PosterUrl;
                    existing.IsActive = m.IsActive;
                }
            }
            _context.SaveChanges();
        }

        // ─────────────────────────────────────────────────────────────────────
        // SHOWTIMES  (chỉ cho phim đang chiếu, 7 ngày tới)
        // ─────────────────────────────────────────────────────────────────────
        private void SeedShowTimes()
        {
            var airingTitles = new[] { "Inception", "Interstellar", "Murder Report", "The Rip", "The Swedish Connection", "War Machine" };
            var airingMovies = _context.Movies
                .Where(m => airingTitles.Contains(m.Title))
                .ToList();

            var screens = _context.Screens.ToList();
            var today   = DateTime.Today;

            var slots = new[]
            {
                (Start: new TimeSpan(9, 0, 0),  End: new TimeSpan(11, 30, 0)),
                (Start: new TimeSpan(13, 0, 0), End: new TimeSpan(15, 30, 0)),
                (Start: new TimeSpan(17, 0, 0), End: new TimeSpan(19, 30, 0)),
                (Start: new TimeSpan(20, 30, 0),End: new TimeSpan(23, 0, 0)),
            };

            var showtimesToAdd = new List<ShowTime>();
            int movieIdx = 0;

            foreach (var screen in screens)
            {
                var movie = airingMovies[movieIdx % airingMovies.Count];
                movieIdx++;

                // Skip nếu screen này đã có showtime cho movie này
                if (_context.ShowTimes.Any(st => st.ScreenId == screen.Id && st.MovieId == movie.Id))
                    continue;

                for (int day = 0; day < 7; day++)
                {
                    var date = today.AddDays(day);
                    foreach (var slot in slots)
                    {
                        showtimesToAdd.Add(new ShowTime
                        {
                            MovieId        = movie.Id,
                            ScreenId       = screen.Id,
                            Date           = date,
                            StartTime      = slot.Start,
                            EndTime        = slot.End,
                            TicketPrice    = 85000,
                            VipTicketPrice = 120000,
                        });
                    }
                }
            }

            if (showtimesToAdd.Any())
            {
                _context.ShowTimes.AddRange(showtimesToAdd);
                _context.SaveChanges();
            }
        }

        // ─────────────────────────────────────────────────────────────────────
        // CONCESSIONS
        // ─────────────────────────────────────────────────────────────────────
        private void SeedConcessions()
        {
            var concessions = new[]
            {
                new { Name = "Bắp rang bơ nhỏ",            Description = "Bắp rang bơ size S thơm ngon.",            Price = 45000m,  ImageUrl = (string?)"download (8).jpg" },
                new { Name = "Bắp rang bơ lớn",            Description = "Bắp rang bơ size L siêu to.",              Price = 65000m,  ImageUrl = "download (8).jpg" },
                new { Name = "Combo đôi (2 bắp + 2 nước)", Description = "2 bắp lớn + 2 ly Pepsi 32oz.",             Price = 150000m, ImageUrl = "images.jpg"        },
                new { Name = "Pepsi 32oz",                  Description = "Pepsi size lớn không giới hạn refill.",    Price = 35000m,  ImageUrl = "download (9).jpg"  },
                new { Name = "Coca-Cola 32oz",              Description = "Coca-Cola size lớn không giới hạn refill.",Price = 35000m,  ImageUrl = "download (9).jpg"  },
                new { Name = "Nước suối Aquafina",          Description = "Nước khoáng đóng chai 500ml.",             Price = 20000m,  ImageUrl = (string?)null        },
                new { Name = "Hotdog",                      Description = "Xúc xích nướng kẹp bánh mì.",              Price = 40000m,  ImageUrl = (string?)null        },
                new { Name = "Nachos & Cheese",             Description = "Bánh nachos giòn với sốt phô mai.",        Price = 55000m,  ImageUrl = (string?)null        },
            };

            foreach (var c in concessions)
            {
                var existing = _context.Concessions.FirstOrDefault(x => x.Name == c.Name);
                if (existing == null)
                {
                    _context.Concessions.Add(new Concession
                    {
                        Name        = c.Name,
                        Description = c.Description,
                        Price       = c.Price,
                        ImageUrl    = c.ImageUrl,
                    });
                }
                else if (existing.ImageUrl == null && c.ImageUrl != null)
                {
                    existing.ImageUrl = c.ImageUrl;
                }
            }
            _context.SaveChanges();
        }

        // ─────────────────────────────────────────────────────────────────────
        // PROMOTIONS
        // ─────────────────────────────────────────────────────────────────────
        private void SeedPromotions()
        {
            if (_context.Promotions.Any()) return;

            var today = DateOnly.FromDateTime(DateTime.Today);

            _context.Promotions.AddRange(
                new Promotion
                {
                    Description   = "Giảm 10% cho mọi đơn đặt vé",
                    DiscountType  = Constants.PromotionDiscountType_Percentage,
                    DiscountValue = 10,
                    Quantity      = 200,
                    StartDate     = today,
                    EndDate       = today.AddMonths(3),
                },
                new Promotion
                {
                    Description   = "Giảm 50,000đ cho đơn từ 150,000đ",
                    DiscountType  = Constants.PromotionDiscountType_Amount,
                    DiscountValue = 50000,
                    Quantity      = 100,
                    StartDate     = today,
                    EndDate       = today.AddMonths(1),
                },
                new Promotion
                {
                    Description   = "Sinh viên: Giảm 20% (cần xuất trình thẻ sinh viên)",
                    DiscountType  = Constants.PromotionDiscountType_Percentage,
                    DiscountValue = 20,
                    Quantity      = 300,
                    StartDate     = today,
                    EndDate       = today.AddMonths(6),
                }
            );
            _context.SaveChanges();
        }

        // ─────────────────────────────────────────────────────────────────────
        // MANAGERS & EMPLOYEES
        // ─────────────────────────────────────────────────────────────────────
        private void SeedManagersAndEmployees()
        {
            var theaters = _context.Theaters.ToList();

            var managersData = new[]
            {
                new { Email = "manager.hoankiem@kinema.com",  DisplayName = "Nguyễn Văn An",    Phone = "0901111001", Theater = "Kinema Hoàn Kiếm"  },
                new { Email = "manager.caugiay@kinema.com",   DisplayName = "Trần Thị Bình",    Phone = "0901111002", Theater = "Kinema Cầu Giấy"   },
                new { Email = "manager.quan1@kinema.com",     DisplayName = "Lê Minh Châu",     Phone = "0901111003", Theater = "Kinema Quận 1"      },
                new { Email = "manager.binhthanh@kinema.com", DisplayName = "Phạm Thị Dung",    Phone = "0901111004", Theater = "Kinema Bình Thạnh"  },
                new { Email = "manager.haichau@kinema.com",   DisplayName = "Hoàng Văn Em",     Phone = "0901111005", Theater = "Kinema Hải Châu"    },
                new { Email = "manager.ninhkieu@kinema.com",  DisplayName = "Vũ Thị Phương",    Phone = "0901111006", Theater = "Kinema Ninh Kiều"   },
            };

            foreach (var m in managersData)
            {
                if (_userManager.FindByEmailAsync(m.Email).GetAwaiter().GetResult() != null) continue;

                var theater = theaters.First(t => t.Name == m.Theater);
                var user = new ApplicationUser
                {
                    UserName         = m.Email,
                    Email            = m.Email,
                    EmailConfirmed   = true,
                    DisplayName      = m.DisplayName,
                    PhoneNumber      = m.Phone,
                    ManagedTheaterId = theater.Id,
                };
                _userManager.CreateAsync(user, "Manager@123").GetAwaiter().GetResult();
                _userManager.AddToRoleAsync(user, Constants.Role_Manager).GetAwaiter().GetResult();
            }

            var employeesData = new[]
            {
                new { Email = "emp1.hoankiem@kinema.com",  DisplayName = "Ngô Thị Giang",   Phone = "0902222001", Theater = "Kinema Hoàn Kiếm"  },
                new { Email = "emp2.hoankiem@kinema.com",  DisplayName = "Đinh Văn Hùng",   Phone = "0902222002", Theater = "Kinema Hoàn Kiếm"  },
                new { Email = "emp1.quan1@kinema.com",     DisplayName = "Bùi Thị Lan",     Phone = "0902222003", Theater = "Kinema Quận 1"      },
                new { Email = "emp2.quan1@kinema.com",     DisplayName = "Phan Văn Mạnh",   Phone = "0902222004", Theater = "Kinema Quận 1"      },
                new { Email = "emp1.haichau@kinema.com",   DisplayName = "Lý Thị Ngọc",     Phone = "0902222005", Theater = "Kinema Hải Châu"    },
                new { Email = "emp1.ninhkieu@kinema.com",  DisplayName = "Tô Văn Phúc",     Phone = "0902222006", Theater = "Kinema Ninh Kiều"   },
            };

            foreach (var e in employeesData)
            {
                if (_userManager.FindByEmailAsync(e.Email).GetAwaiter().GetResult() != null) continue;

                var theater = theaters.First(t => t.Name == e.Theater);
                var user = new ApplicationUser
                {
                    UserName       = e.Email,
                    Email          = e.Email,
                    EmailConfirmed = true,
                    DisplayName    = e.DisplayName,
                    PhoneNumber    = e.Phone,
                    TheaterId      = theater.Id,
                };
                _userManager.CreateAsync(user, "Employee@123").GetAwaiter().GetResult();
                _userManager.AddToRoleAsync(user, Constants.Role_Employee).GetAwaiter().GetResult();
            }
        }

        // ─────────────────────────────────────────────────────────────────────
        // DEMO CUSTOMERS
        // ─────────────────────────────────────────────────────────────────────
        private void SeedCustomers()
        {
            var customersData = new[]
            {
                new { Email = "khachhang1@gmail.com", DisplayName = "Nguyễn Thị Hoa",   Phone = "0903333001" },
                new { Email = "khachhang2@gmail.com", DisplayName = "Trần Văn Quân",    Phone = "0903333002" },
                new { Email = "khachhang3@gmail.com", DisplayName = "Lê Thị Mai",       Phone = "0903333003" },
            };

            foreach (var c in customersData)
            {
                if (_userManager.FindByEmailAsync(c.Email).GetAwaiter().GetResult() != null) continue;

                var user = new ApplicationUser
                {
                    UserName       = c.Email,
                    Email          = c.Email,
                    EmailConfirmed = true,
                    DisplayName    = c.DisplayName,
                    PhoneNumber    = c.Phone,
                };
                _userManager.CreateAsync(user, "Customer@123").GetAwaiter().GetResult();
                _userManager.AddToRoleAsync(user, Constants.Role_Customer).GetAwaiter().GetResult();
            }
        }
    }
}
