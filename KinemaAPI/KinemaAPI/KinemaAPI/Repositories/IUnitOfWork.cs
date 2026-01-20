namespace KinemaAPI.Repositories
{
    public interface IUnitOfWork
    {
        IApplicationUserRepository ApplicationUser { get; }

        Task SaveAsync();
    }
}
