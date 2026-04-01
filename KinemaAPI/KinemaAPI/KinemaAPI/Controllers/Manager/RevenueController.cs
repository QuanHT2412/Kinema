using KinemaAPI.Models.DTO.Requests;
using KinemaAPI.Models.DTO.Responses;
using KinemaAPI.Repositories;
using Microsoft.AspNetCore.Mvc;

namespace KinemaAPI.Controllers.Manager
{
    [Route("api/[controller]")]
    [ApiController]
    public class RevenueController : ControllerBase
    {
        private readonly IUnitOfWork _unitOfWork;

        public RevenueController(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        [HttpGet]
        //[Authorize(Roles = $"{Constants.Role_Admin},{Constants.Role_Manager}")]
        public async Task<IActionResult> GetRevenueData([FromQuery] GetRevenueRequestDTO request)
        {
            var revenues = await _unitOfWork.Payment.GetRevenueItemsAsync(
                request.StartDate.ToDateTime(TimeOnly.MinValue),
                request.EndDate.ToDateTime(TimeOnly.MaxValue),
                request.TheaterId
            );

            return Ok(new SuccessResponseDTO
            {
                Message = "Retrieve Revenue Successful",
                Data = revenues
            });
        }
    }
}
