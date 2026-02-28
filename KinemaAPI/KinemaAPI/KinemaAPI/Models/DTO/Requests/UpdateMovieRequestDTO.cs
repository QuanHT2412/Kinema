
namespace KinemaAPI.Models.DTO.Requests
{
    public class UpdateMovieRequestDTO
    {
        public string Title { get; set; }
        public string Genre { get; set; }
        public string Director { get; set; }
        public string Cast { get; set; }
        public string Description { get; set; }
        public int Duration { get; set; }
        public DateOnly ReleaseDate { get; set; }
        public string? TrailerUrl { get; set; }
        public IFormFile? File { get; set; }
    }
}
