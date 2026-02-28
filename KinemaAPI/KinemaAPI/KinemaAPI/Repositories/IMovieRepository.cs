using KinemaAPI.Models.Domain;
using KinemaAPI.Models.DTO.Requests;

namespace KinemaAPI.Repositories
{
    public interface IMovieRepository : IRepository<Movie>
    {
        Task<(IEnumerable<Movie> movies, int totalCount)> GetAllAsync(MovieFilterRequestDTO? filter = null, PagedRequestDTO? paged = null);
    }
}
