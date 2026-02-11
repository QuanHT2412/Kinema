using System.ComponentModel.DataAnnotations;

namespace KinemaAPI.Models.DTO.Requests
{
    public class CreateTheaterRequestDTO
    {
        [Required]
        public string Name { get; set; }

        [Required]
        public string Address { get; set; }

        [Required]
        public string Phone { get; set; }

        [Required]
        [EmailAddress]
        public string Email { get; set; }

        [Required]
        public string Description { get; set; }

        [Required]
        public int ProvinceId { get; set; }
    }
}
