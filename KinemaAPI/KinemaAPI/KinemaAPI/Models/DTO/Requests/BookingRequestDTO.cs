
namespace KinemaAPI.Models.DTO.Requests
{
    public class BookingRequestDTO
    {
        public string? UserId { get; set; }
        public string? EmployeeId { get; set; }
        public string Username { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public int TheaterId { get; set; }
        public int ScreenId { get; set; }
        public int ShowtimeId { get; set; }
        public int PromotionId { get; set; }
        public int PointsUsed { get; set; }
        public decimal TotalAmount { get; set; }
        public decimal DiscountAmount { get; set; }
        public decimal FinalAmount { get; set; }
        public List<BookingRequestConcessionsDTO> Concessions { get; set; } = [];
        public List<BookingRequestSeatsDTO> Seats { get; set; } = [];
    }

    public class BookingRequestSeatsDTO
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string SeatType { get; set; }
    }

    public class BookingRequestConcessionsDTO
    {
        public int Id { get; set; }
        public int Quantity { get; set; }
    }
}
