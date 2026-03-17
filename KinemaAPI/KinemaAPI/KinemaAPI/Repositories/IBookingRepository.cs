using KinemaAPI.Models.Domain;

namespace KinemaAPI.Repositories
{
    public interface IBookingRepository : IRepository<Booking>
    {
        Task<IEnumerable<int>> GetAllBookingSeatIds(int showtimeId);
    }
}
