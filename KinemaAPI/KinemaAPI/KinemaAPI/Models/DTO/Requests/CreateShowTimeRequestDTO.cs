
namespace KinemaAPI.Models.DTO.Requests
{
    public class CreateShowTimeRequestDTO
    {
        public int MovieId { get; set; }
        public int ScreenId { get; set; }
        public List<ShowTimeData> ShowTimes { get; set; }

        public decimal TicketPrice { get; set; }
        public decimal VipTicketPrice { get; set; }
    }

    public class ShowTimeData
    {
        public DateTime Date { get; set; }
        public List<string> StartTimes { get; set; }
        public List<string> EndTimes { get; set; }
    }
}