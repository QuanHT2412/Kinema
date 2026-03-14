namespace KinemaAPI.Repositories
{
    public interface IUnitOfWork
    {
        IProvinceRepository Province { get; }
        ITheaterRepository Theater { get; }
        IMovieRepository Movie { get; }
        IShowTimeRepository ShowTime { get; }
        ISeatRepository Seat { get; }
        IScreenRepository Screen { get; }
        IConcessionRepository Concession { get; }
        IConcessionOrderRepository ConcessionOrder { get; }
        IConcessionOrderDetailRepository ConcessionOrderDetail { get; }
        IApplicationUserRepository ApplicationUser { get; }

        Task SaveAsync();
    }
}
