using KinemaAPI.Data;
using KinemaAPI.Models.Domain;
using KinemaAPI.Repositories;

namespace KinemaAPI.Repositories.Impl
{
    public class BookingDetailRepository : Repository<BookingDetail>, IBookingDetailRepository
    {
        public BookingDetailRepository(KinemaDbContext context) : base(context)
        {

        }
    }
}
