using KinemaAPI.Data;
using KinemaAPI.Models.Domain;
using KinemaAPI.Repositories;

namespace KinemaAPI.Repositories.Impl
{
    public class ConcessionOrderRepository : Repository<ConcessionOrder>, IConcessionOrderRepository
    {
        public ConcessionOrderRepository(KinemaDbContext context) : base(context)
        {

        }
    }
}
