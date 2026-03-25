using System.ComponentModel.DataAnnotations;

namespace KinemaAPI.Models.DTO.Requests
{
    public class EmployeeGetShowtimesRequestDTO
    {
        [Required]
        public int TheaterId { get; set; }
        [Required]
        public string Date { get; set; } = DateTime.Now.ToString("yyyy-MM-dd");
    }
}
