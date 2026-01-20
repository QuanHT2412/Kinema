using KinemaAPI.Data;

namespace KinemaAPI.Repositories.Impl
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly KinemaDbContext _db;
        public IApplicationUserRepository ApplicationUser { get; private set; }

        public UnitOfWork(KinemaDbContext db)
        {
            _db = db;
            ApplicationUser = new ApplicationUserRepository(_db);
        }

        public async Task SaveAsync()
        {
            await _db.SaveChangesAsync();
        }
    }
}
