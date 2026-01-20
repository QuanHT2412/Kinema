using KinemaAPI.Models.Domain;
using KinemaAPI.Models.DTO.Requests;

namespace KinemaAPI.Repositories
{
    public interface IApplicationUserRepository : IRepository<ApplicationUser>
    {
        Task<(IEnumerable<ApplicationUser> employees, int totalCount)> GetAllEmployeeAsync(EmployeeFilterRequestDTO? filter = null,
            SortRequestDTO? sort = null,
            PagedRequestDTO? paged = null,
            string? includeProperties = null);

        Task<(IEnumerable<ApplicationUser> customers, int totalCount)> GetAllCustomerAsync(CustomerFilterRequestDTO? filter = null,
            SortRequestDTO? sort = null,
            PagedRequestDTO? paged = null);

        Task<ApplicationUser?> FindCustomerByEmailAsync(string email);


    }
}
