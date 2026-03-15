
namespace KinemaAPI.Models.DTO.Requests
{
    public class UpdatePromotionRequestDTO
    {
        public string Description { get; set; }
        public string DiscountType { get; set; }
        public int DiscountValue { get; set; }
        public int Quantity { get; set; }
        public DateOnly StartDate { get; set; }
        public DateOnly EndDate { get; set; }
    }
}
