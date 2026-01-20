using Microsoft.AspNetCore.Identity;

namespace KinemaAPI.Services
{
    public interface ITokenService
    {
        string CreateJwtToken(IdentityUser user, List<string> roles);
    }
}
