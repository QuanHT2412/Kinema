using KinemaAPI.Models.Domain;
using KinemaAPI.Models.DTO.Requests;

namespace KinemaAPI.Repositories
{
    public interface IShowTimeRepository : IRepository<ShowTime>
    {
        Task<IEnumerable<Movie>> GetCurrentlyAiringMovies();
        Task<IEnumerable<Movie>> GetUpcomingMovies();
        Task<IEnumerable<ShowTime>> GetShowtimes(ShowTimesFilterRequestDTO filter);
    }
}
