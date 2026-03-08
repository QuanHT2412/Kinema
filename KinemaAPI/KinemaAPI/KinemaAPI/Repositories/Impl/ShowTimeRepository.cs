using KinemaAPI.Data;
using KinemaAPI.Models.Domain;
using KinemaAPI.Models.DTO.Requests;
using Microsoft.EntityFrameworkCore;

namespace KinemaAPI.Repositories.Impl
{
    public class ShowTimeRepository : Repository<ShowTime>, IShowTimeRepository
    {
        public ShowTimeRepository(KinemaDbContext context) : base(context)
        {

        }

        public async Task<IEnumerable<Movie>> GetCurrentlyAiringMovies()
        {
            var today = DateTime.Today;
            var next7Days = today.AddDays(7);
            var airingMovies = await _context.ShowTimes
                .Where(st => st.IsActive
                && st.Date >= today && st.Date <= next7Days)
                .Select(st => st.Movie)
                .Distinct()
                .ToListAsync();

            return airingMovies;
        }

        public async Task<IEnumerable<ShowTime>> GetShowtimes(ShowTimesFilterRequestDTO? filter)
        {
            // validate input
            DateTime startDate = filter?.StartDate ?? DateTime.Now.Date;
            DateTime endDate = filter?.EndDate ?? DateTime.Now.Date.AddDays(7);
            int movieId = filter?.MovieId ?? 0;
            int screenId = filter?.ScreenId ?? 0;

            // find showtime
            var showTimesQuery = _context.ShowTimes.AsQueryable();
            if (movieId > 0)
            {
                showTimesQuery = showTimesQuery.Where(st => st.MovieId == movieId);
            }
            if (screenId > 0)
            {
                showTimesQuery = showTimesQuery.Where(st => st.ScreenId == screenId);
            }

            showTimesQuery = showTimesQuery.Where(st => st.Date >= startDate && st.Date <= endDate)
                .OrderBy(st => st.Date)
                .ThenBy(st => st.StartTime);

            var showTimes = await showTimesQuery
                .Include(st => st.Movie)
                .Include(st => st.Screen)
                .ToListAsync();

            return showTimes;
        }

        public async Task<IEnumerable<Movie>> GetUpcomingMovies()
        {
            var today = DateOnly.FromDateTime(DateTime.Today);
            var upcomingMovies = await _context.Movies
                .Where(m => m.IsActive && m.ReleaseDate > today)
                .ToListAsync();

            return upcomingMovies;
        }
    }
}
