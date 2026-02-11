using AutoMapper;
using KinemaAPI.Models.Domain;
using KinemaAPI.Models.DTO;
using KinemaAPI.Models.DTO.Requests;

namespace KinemaAPI.Mappings
{
    public class AutoMapperProfiles : Profile
    {
        private readonly IHttpContextAccessor httpContextAccessor;

        public AutoMapperProfiles()
        {
            httpContextAccessor = new HttpContextAccessor();
            // Add your mapping configurations here
            // CreateMap<Source, Destination>();
            CreateMap<ApplicationUser, UserDTO>()
                .ForMember(dest => dest.UserName, opt => opt.MapFrom(src => src.DisplayName))
                .ForMember(dest => dest.IsLocked, opt => opt.MapFrom(src => src.LockoutEnd.HasValue && src.LockoutEnd.Value > DateTime.UtcNow))
                .ForMember(dest => dest.PhoneNumber, opt => opt.MapFrom(src => src.PhoneNumber ?? string.Empty));
            CreateMap<ApplicationUser, ManagerDTO>()
                .ForMember(dest => dest.Theater, opt => opt.MapFrom(src => src.ManagedTheater))
                .ForMember(dest => dest.Username, opt => opt.MapFrom(src => src.DisplayName))
                .ForMember(dest => dest.IsLocked, opt => opt.MapFrom(src => src.LockoutEnd.HasValue && src.LockoutEnd.Value > DateTime.UtcNow));
            CreateMap<Province, ProvinceDTO>();

            CreateMap<Theater, TheaterDTO>()
                .ForMember(dest => dest.Province, opt => opt.MapFrom(src => src.Province != null ? src.Province : null));

        }
    }

}
