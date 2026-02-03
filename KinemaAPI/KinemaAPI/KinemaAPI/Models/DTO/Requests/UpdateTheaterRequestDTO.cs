
namespace KinemaAPI.Models.DTO.Requests
{
    public class UpdateTheaterRequestDTO
    {
        public string Name { get; set; }

        public string Address { get; set; }

        public string Phone { get; set; }

        public string Email { get; set; }

        public string Description { get; set; }

        public int ProvinceId { get; set; }
    }
}
