using KinemaAPI.Data;
using KinemaAPI.Models.Domain;
using KinemaAPI.Repositories;

namespace KinemaAPI.Repositories.Impl
{
    public class ConcessionOrderDetailRepository : Repository<ConcessionOrderDetail>, IConcessionOrderDetailRepository
    {
        public ConcessionOrderDetailRepository(KinemaDbContext context) : base(context)
        {

        }
    }
}
