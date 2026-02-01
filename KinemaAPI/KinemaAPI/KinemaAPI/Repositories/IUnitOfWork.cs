namespace KinemaAPI.Repositories
{
    public interface IUnitOfWork
    {
        IProvinceRepository Province { get; }
        IApplicationUserRepository ApplicationUser { get; }

        Task SaveAsync();
    }
}
