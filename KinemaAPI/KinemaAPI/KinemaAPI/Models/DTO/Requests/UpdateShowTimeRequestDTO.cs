
namespace KinemaAPI.Models.DTO.Requests
{
    public class UpdateShowTimeRequestDTO
    {
        public TimeSpan StartTime { get; set; }
        public TimeSpan EndTime { get; set; }
        public decimal TicketPrice { get; set; }
        public decimal VipTicketPrice { get; set; }
    }
}