using KinemaAPI.Data;
using KinemaAPI.Models.Domain;
using KinemaAPI.Repositories.Impl;

namespace KinemaAPI.Repositories
{
    public class ConcessionRepository : Repository<Concession>, IConcessionRepository
    {

        public ConcessionRepository(KinemaDbContext context) : base(context)
        {
        }


    }
}
