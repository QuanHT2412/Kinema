using KinemaAPI.Models.Domain;

namespace KinemaAPI.Repositories
{
    public interface ITheaterRepository : IRepository<Theater>
    {
        int CountTotal();
        Task<int> CountByProvinceId(int provinceId);
    }
}
