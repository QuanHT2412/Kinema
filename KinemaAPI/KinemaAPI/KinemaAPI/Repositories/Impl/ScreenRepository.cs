using KinemaAPI.Data;
using KinemaAPI.Models.Domain;

namespace KinemaAPI.Repositories.Impl
{
    public class ScreenRepository : Repository<Screen>, IScreenRepository
    {
        public ScreenRepository(KinemaDbContext context) : base(context)
        {

        }


    }
}
