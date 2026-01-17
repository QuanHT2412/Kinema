using KinemaAPI.Data;

namespace KinemaAPI.Repositories.Impl
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly KinemaDbContext _db;

        public UnitOfWork(KinemaDbContext db)
        {
            _db = db;
        }

        public async Task SaveAsync()
        {
            await _db.SaveChangesAsync();
        }
    }
}
