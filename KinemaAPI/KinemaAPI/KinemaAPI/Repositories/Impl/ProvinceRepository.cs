using KinemaAPI.Data;
using KinemaAPI.Models.Domain;
using KinemaAPI.Repositories;

namespace KinemaAPI.Repositories.Impl
{
	public class ProvinceRepository : Repository<Province>, IProvinceRepository
	{
		public ProvinceRepository(KinemaDbContext context) : base(context)
		{

		}
	}
}
