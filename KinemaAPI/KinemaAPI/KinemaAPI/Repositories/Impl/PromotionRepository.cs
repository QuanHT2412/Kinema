using KinemaAPI.Data;
using KinemaAPI.Models.Domain;

namespace KinemaAPI.Repositories.Impl
{
    public class PromotionRepository : Repository<Promotion>, IPromotionRepository
    {
        public PromotionRepository(KinemaDbContext context) : base(context)
        {
        }

    }
}
