using KinemaAPI.Models.Domain;

namespace KinemaAPI.Repositories
{
    public interface ISeatRepository : IRepository<Seat>
    {

        Task<IEnumerable<Seat>> GetBookedSeatsByShowtimeId(int showtimeId);

    }
}
