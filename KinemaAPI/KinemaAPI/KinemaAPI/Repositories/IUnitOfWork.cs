namespace KinemaAPI.Repositories
{
    public interface IUnitOfWork
    {
        IProvinceRepository Province { get; }
        ITheaterRepository Theater { get; }
        IMovieRepository Movie { get; }
        ISeatRepository Seat { get; }
        IScreenRepository Screen { get; }
        IApplicationUserRepository ApplicationUser { get; }

        Task SaveAsync();
    }
}
