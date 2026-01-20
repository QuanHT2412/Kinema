using System.ComponentModel.DataAnnotations;

namespace KinemaAPI.Models.DTO.Requests
{
    public class ForgotPasswordRequestDTO
    {
        [Required]
        [EmailAddress(ErrorMessage = "Invalid email address format.")]
        public string Email { get; set; }
    }
}
