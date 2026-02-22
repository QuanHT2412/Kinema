using System.ComponentModel.DataAnnotations;

namespace KinemaAPI.Models.DTO.Requests
{
    public class UpdateScreenRequestDTO
    {
        [Required(ErrorMessage = "Screen name is required.")]
        public string Name { get; set; }
    }
}
