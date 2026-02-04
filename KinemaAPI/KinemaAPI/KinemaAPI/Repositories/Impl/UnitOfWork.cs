using KinemaAPI.Data;

namespace KinemaAPI.Repositories.Impl
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly KinemaDbContext _db;
        public IProvinceRepository Province { get; private set; }
        public ITheaterRepository Theater { get; private set; }
        public IApplicationUserRepository ApplicationUser { get; private set; }

        public UnitOfWork(KinemaDbContext db)
        {
            _db = db;
            Province = new ProvinceRepository(_db);
            Theater = new TheaterRepository(_db);
            ApplicationUser = new ApplicationUserRepository(_db);
        }

        public async Task SaveAsync()
        {
            await _db.SaveChangesAsync();
        }
    }
}
