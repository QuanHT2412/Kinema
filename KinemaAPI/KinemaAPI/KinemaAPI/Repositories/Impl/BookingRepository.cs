using KinemaAPI.Data;
using KinemaAPI.Models.Domain;
using Microsoft.EntityFrameworkCore;

namespace KinemaAPI.Repositories.Impl
{
    public class BookingRepository : Repository<Booking>, IBookingRepository
    {
        public BookingRepository(KinemaDbContext context) : base(context)
        {

        }

        public async Task<IEnumerable<int>> GetAllBookingSeatIds(int showtimeId)
        {
            // only get the booked seats that isActive (has been paid) or created 5 minutes recently
            var bookedSeatIds = await _context.BookingDetails
                .AsNoTracking()
                .Where(b => b.Booking.ShowTimeId == showtimeId)
                .Select(b => b.SeatId)
                .Where(seatId => seatId.HasValue)
                .Select(seatId => seatId.Value)
                .ToListAsync();
            return bookedSeatIds;
        }
    }
}
