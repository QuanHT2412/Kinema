using System.ComponentModel.DataAnnotations;

namespace KinemaAPI.Models.DTO.Requests
{
    public class CreateProvinceRequestDTO
    {
        [Required(ErrorMessage = "Province name is required.")]
        public string Name { get; set; }
    }
}
