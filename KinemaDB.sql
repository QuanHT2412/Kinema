USE [master]
GO
/****** Object:  Database [KinemaDb]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE DATABASE [KinemaDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KinemaDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\KinemaDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KinemaDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\KinemaDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KinemaDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KinemaDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KinemaDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KinemaDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KinemaDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KinemaDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KinemaDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [KinemaDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KinemaDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KinemaDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KinemaDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KinemaDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KinemaDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KinemaDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KinemaDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KinemaDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KinemaDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [KinemaDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KinemaDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KinemaDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KinemaDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KinemaDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KinemaDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [KinemaDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KinemaDb] SET RECOVERY FULL 
GO
ALTER DATABASE [KinemaDb] SET  MULTI_USER 
GO
ALTER DATABASE [KinemaDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KinemaDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KinemaDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KinemaDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KinemaDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KinemaDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'KinemaDb', N'ON'
GO
ALTER DATABASE [KinemaDb] SET QUERY_STORE = OFF
GO
USE [KinemaDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/30/2026 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/30/2026 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/30/2026 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/30/2026 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/30/2026 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/30/2026 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/30/2026 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[DisplayName] [nvarchar](max) NOT NULL,
	[TheaterId] [int] NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ManagedTheaterId] [int] NULL,
	[Point] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/30/2026 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingDetails]    Script Date: 3/30/2026 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookingId] [int] NOT NULL,
	[SeatId] [int] NULL,
	[SeatName] [nvarchar](max) NOT NULL,
	[TicketPrice] [decimal](18, 2) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[LastUpdatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_BookingDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 3/30/2026 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShowTimeId] [int] NOT NULL,
	[BookingDate] [datetime2](7) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[BookingStatus] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[LastUpdatedAt] [datetime2](7) NOT NULL,
	[CheckedInBy] [nvarchar](450) NULL,
 CONSTRAINT [PK_Bookings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConcessionOrderDetails]    Script Date: 3/30/2026 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConcessionOrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConcessionOrderId] [int] NOT NULL,
	[ConcessionId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[LastUpdatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ConcessionOrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConcessionOrders]    Script Date: 3/30/2026 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConcessionOrders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[LastUpdatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ConcessionOrders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Concessions]    Script Date: 3/30/2026 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Concessions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[LastUpdatedAt] [datetime2](7) NOT NULL,
	[IsRemoved] [bit] NOT NULL,
 CONSTRAINT [PK_Concessions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 3/30/2026 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Genre] [nvarchar](max) NOT NULL,
	[Director] [nvarchar](max) NOT NULL,
	[Cast] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Duration] [int] NOT NULL,
	[ReleaseDate] [date] NOT NULL,
	[PosterUrl] [nvarchar](max) NULL,
	[TrailerUrl] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[LastUpdatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 3/30/2026 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[ConcessionOrderId] [int] NULL,
	[BookingId] [int] NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[PaymentMethod] [nvarchar](max) NULL,
	[PaymentDate] [datetime2](7) NOT NULL,
	[PaymentStatus] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[LastUpdatedAt] [datetime2](7) NOT NULL,
	[EmployeeId] [nvarchar](450) NULL,
	[BonusPointsUsed] [int] NULL,
	[DiscountAmount] [decimal](18, 2) NULL,
	[FinalAmount] [decimal](18, 2) NOT NULL,
	[PromotionId] [int] NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotions]    Script Date: 3/30/2026 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[DiscountType] [nvarchar](max) NOT NULL,
	[DiscountValue] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[LastUpdatedAt] [datetime2](7) NOT NULL,
	[UsedQuantity] [int] NOT NULL,
 CONSTRAINT [PK_Promotions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provinces]    Script Date: 3/30/2026 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provinces](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Provinces] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Screens]    Script Date: 3/30/2026 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Screens](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[TheaterId] [int] NOT NULL,
	[Rows] [int] NOT NULL,
	[Columns] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[LastUpdatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Screens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seats]    Script Date: 3/30/2026 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seats](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SeatRow] [nvarchar](max) NOT NULL,
	[SeatNumber] [int] NOT NULL,
	[ScreenId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[LastUpdatedAt] [datetime2](7) NOT NULL,
	[IsRemoved] [bit] NOT NULL,
	[SeatType] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Seats] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShowTimes]    Script Date: 3/30/2026 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShowTimes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [int] NOT NULL,
	[ScreenId] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[StartTime] [time](7) NOT NULL,
	[EndTime] [time](7) NOT NULL,
	[TicketPrice] [decimal](18, 2) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[LastUpdatedAt] [datetime2](7) NOT NULL,
	[VipTicketPrice] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_ShowTimes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Theaters]    Script Date: 3/30/2026 11:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Theaters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[LastUpdatedAt] [datetime2](7) NOT NULL,
	[ProvinceId] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Theaters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20260117030255_InitialCreate', N'8.0.11')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20260204112950_UpdateTheaterManagerRelationShip', N'8.0.11')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20260204125813_ChangeTheaterTable', N'8.0.11')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20260227023311_AddFieldToSeatTable', N'8.0.11')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20260312145526_addRemoveFieldToConcession', N'8.0.11')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20260312155318_modifyPaymentTable', N'8.0.11')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20260315005948_addSeatType', N'8.0.11')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20260315015138_AddPromotionTable', N'8.0.11')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20260315025319_UpdatePromotionTable', N'8.0.11')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20260402112758_RemoveDiscriminatorColumn', N'8.0.11')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1f9ef899-676d-4a09-bcc1-e896ebfaeadd', N'Manager', N'MANAGER', NULL)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'20c2312c-b7f1-482b-9659-3af4b391d4fb', N'Customer', N'CUSTOMER', NULL)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'929d21c4-d8a1-420e-8413-10a22d31cd8b', N'Admin', N'ADMIN', NULL)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c6ecdfa9-7602-4fc0-b3a3-1c283a6fc7c6', N'Employee', N'EMPLOYEE', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'766e6d1d-eac8-4aeb-b9b4-57c9e01c63ba', N'1f9ef899-676d-4a09-bcc1-e896ebfaeadd')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'835ae809-e612-4c1b-baeb-a319a8eadfd0', N'1f9ef899-676d-4a09-bcc1-e896ebfaeadd')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'867e6c01-6325-4f85-8626-c353a04d10bf', N'1f9ef899-676d-4a09-bcc1-e896ebfaeadd')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8d1a9447-f4ad-46d8-99b9-dd9fb23b1415', N'1f9ef899-676d-4a09-bcc1-e896ebfaeadd')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd0dcc0c0-686e-42ae-9580-3fa3b57a0c6b', N'1f9ef899-676d-4a09-bcc1-e896ebfaeadd')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'eb572e77-3607-48e2-b806-ccff707e2744', N'1f9ef899-676d-4a09-bcc1-e896ebfaeadd')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'584c6874-fdbc-49d1-986a-4c19345d8c51', N'20c2312c-b7f1-482b-9659-3af4b391d4fb')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'70af940f-7b07-43f7-98ef-4b1558cdd436', N'20c2312c-b7f1-482b-9659-3af4b391d4fb')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e3ae23eb-e384-4230-87e3-69b94bca3c14', N'20c2312c-b7f1-482b-9659-3af4b391d4fb')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e52a31f0-5cdc-4827-9ba9-d1fb62b4e30b', N'20c2312c-b7f1-482b-9659-3af4b391d4fb')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'37a22621-2df1-48bc-8e3b-88f79b448322', N'929d21c4-d8a1-420e-8413-10a22d31cd8b')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1766302d-12b8-4e1c-bb8a-3e2073907680', N'c6ecdfa9-7602-4fc0-b3a3-1c283a6fc7c6')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2abed7c0-c229-4f7e-81ae-e5a098aafa1d', N'c6ecdfa9-7602-4fc0-b3a3-1c283a6fc7c6')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'759a993e-28f0-4f41-86b7-981979b230fe', N'c6ecdfa9-7602-4fc0-b3a3-1c283a6fc7c6')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'984153b2-ee29-4177-b1a7-6c9471d43aa2', N'c6ecdfa9-7602-4fc0-b3a3-1c283a6fc7c6')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c87ca06c-0f2f-4a3f-bcf4-b1c5aabc115e', N'c6ecdfa9-7602-4fc0-b3a3-1c283a6fc7c6')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c88473fe-f41b-43c2-bf0f-8f601acbdd0f', N'c6ecdfa9-7602-4fc0-b3a3-1c283a6fc7c6')
GO
INSERT [dbo].[AspNetUsers] ([Id], [DisplayName], [TheaterId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ManagedTheaterId], [Point]) VALUES (N'1766302d-12b8-4e1c-bb8a-3e2073907680', N'Lý Thị Ngọc', 5, N'emp1.haichau@kinema.com', N'EMP1.HAICHAU@KINEMA.COM', N'emp1.haichau@kinema.com', N'EMP1.HAICHAU@KINEMA.COM', 1, N'AQAAAAIAAYagAAAAED08d4VHNApVdeC0wl3oBe+7Jhi99FhBAEfQZ4C8JSQb+PxnKR8ff+UHxuasPJJOaA==', N'EFKDHISCIYS677YXJTKUENCFHAKFXY2C', N'5e23833b-dcc6-4380-8da9-57de12c61e15', N'0902222005', 0, 0, NULL, 1, 0, NULL, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [DisplayName], [TheaterId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ManagedTheaterId], [Point]) VALUES (N'2abed7c0-c229-4f7e-81ae-e5a098aafa1d', N'Tô Văn Phúc', 6, N'emp1.ninhkieu@kinema.com', N'EMP1.NINHKIEU@KINEMA.COM', N'emp1.ninhkieu@kinema.com', N'EMP1.NINHKIEU@KINEMA.COM', 1, N'AQAAAAIAAYagAAAAENntjxL/zcKd3vIyfmLDx5rhe6NJAS37SJ+nCh6nnzI0dDx+i70saLc79rh5wlrPww==', N'TARGLMU76GUHXUGTDIEFH5GVSALWLQP6', N'f832cf12-a38c-4376-ae0c-3347bf95ed1e', N'0902222006', 0, 0, NULL, 1, 0, NULL, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [DisplayName], [TheaterId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ManagedTheaterId], [Point]) VALUES (N'37a22621-2df1-48bc-8e3b-88f79b448322', N'Super Admin', NULL, N'admin@kinema.com', N'ADMIN@KINEMA.COM', N'admin@kinema.com', N'ADMIN@KINEMA.COM', 1, N'AQAAAAIAAYagAAAAEAREfQXoHElGBBzdp45ajMhLSqmHkoR4103ZSAgGxr4PpjsUQMBScZTLooiUgLD26w==', N'7XQZNAVSJCJFIJISCB5RBMZWCJDG7IO3', N'ed7a0520-e5ce-4e9d-99f1-4af3c4a76850', N'0900000000', 0, 0, NULL, 1, 0, NULL, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [DisplayName], [TheaterId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ManagedTheaterId], [Point]) VALUES (N'584c6874-fdbc-49d1-986a-4c19345d8c51', N'Trần Văn Quân', NULL, N'khachhang2@gmail.com', N'KHACHHANG2@GMAIL.COM', N'khachhang2@gmail.com', N'KHACHHANG2@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEJREja0Gd+7dcqW39b4tySc71neGNcfRQXLAShgoW0/N7F/4kQSUcjAJ+RUb4L2qmA==', N'DZ5UTDVKESGJRFBQLT6IQOI4RTEVJEHE', N'44f8c875-53f0-42ef-ace9-3d420c1abc10', N'0903333002', 0, 0, NULL, 1, 0, NULL, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [DisplayName], [TheaterId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ManagedTheaterId], [Point]) VALUES (N'70af940f-7b07-43f7-98ef-4b1558cdd436', N'Trần Văn Nam', NULL, N'khachhang4@gmail.com', N'KHACHHANG4@GMAIL.COM', N'khachhang4@gmail.com', N'KHACHHANG4@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEAWA1aCHSH/t0RWViiebAoOACW1DRU0xTQf4ki8GF/l6yvub7tbe0Fwcv1NyeHNgsQ==', N'EJ6NRAXX7AO7MVUMDO3AKZ7OCZYYFVHF', N'98db17fa-8e55-495f-8887-27054cf6042d', NULL, 0, 0, NULL, 1, 0, NULL, 400)
GO
INSERT [dbo].[AspNetUsers] ([Id], [DisplayName], [TheaterId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ManagedTheaterId], [Point]) VALUES (N'759a993e-28f0-4f41-86b7-981979b230fe', N'Bùi Thị Lan', 3, N'emp1.quan1@kinema.com', N'EMP1.QUAN1@KINEMA.COM', N'emp1.quan1@kinema.com', N'EMP1.QUAN1@KINEMA.COM', 1, N'AQAAAAIAAYagAAAAEGigTcw2MDZPv+6Ee6XaiRz02dKfFjM1c8eSdQLFvAnZ+OW+CEceTiQijKIQGqocCw==', N'VIWE6GGGWGHGDVPVKE7AGR3DECAPFSCQ', N'803c1330-4539-49c8-8226-87b6e7c0c160', N'0902222003', 0, 0, NULL, 1, 0, NULL, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [DisplayName], [TheaterId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ManagedTheaterId], [Point]) VALUES (N'766e6d1d-eac8-4aeb-b9b4-57c9e01c63ba', N'Lê Minh Châu', 3, N'manager.quan1@kinema.com', N'MANAGER.QUAN1@KINEMA.COM', N'manager.quan1@kinema.com', N'MANAGER.QUAN1@KINEMA.COM', 1, N'AQAAAAIAAYagAAAAECkXTzCT2JqayyMzfCR3EoXFFnyT5Z/EfT28AtYMW4Jsw9KnVIueEHhRAjvbSj+bgg==', N'2A2GQAMYZRYUU7QFTUYCBQNGC7PSGYGO', N'95d8ad07-ef31-40a6-9ce4-4da3aa16a983', N'0901111003', 0, 0, NULL, 1, 0, 3, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [DisplayName], [TheaterId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ManagedTheaterId], [Point]) VALUES (N'835ae809-e612-4c1b-baeb-a319a8eadfd0', N'Phạm Thị Dung', 4, N'manager.binhthanh@kinema.com', N'MANAGER.BINHTHANH@KINEMA.COM', N'manager.binhthanh@kinema.com', N'MANAGER.BINHTHANH@KINEMA.COM', 1, N'AQAAAAIAAYagAAAAEOF+Jv7BqSJTzdKCkLV0sk5BkKRmDrU+02C8byaQqm+yvdVAJsDNIwmyzUzL0G6itg==', N'IIQVRLXPU2CUWNJIAVOFEWHLK7YLZQES', N'be68fffd-3d47-43e7-ba85-ad37a1d37d7f', N'0901111004', 0, 0, NULL, 1, 0, 4, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [DisplayName], [TheaterId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ManagedTheaterId], [Point]) VALUES (N'867e6c01-6325-4f85-8626-c353a04d10bf', N'Vũ Thị Phương', 6, N'manager.ninhkieu@kinema.com', N'MANAGER.NINHKIEU@KINEMA.COM', N'manager.ninhkieu@kinema.com', N'MANAGER.NINHKIEU@KINEMA.COM', 1, N'AQAAAAIAAYagAAAAEK/pjWqUrAY4Cv6gh8HlRzaGr7Mt9cepodw89kvLywBhnaQ+5M0BGF4zIMeizxSgnQ==', N'2G3H2HBADXKG7STNWJ72T4NF3242LU2B', N'5cd42b78-3d23-4193-a860-030b9e4044f2', N'0901111006', 0, 0, NULL, 1, 0, 6, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [DisplayName], [TheaterId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ManagedTheaterId], [Point]) VALUES (N'8d1a9447-f4ad-46d8-99b9-dd9fb23b1415', N'Nguyễn Văn An', 1, N'manager.hoankiem@kinema.com', N'MANAGER.HOANKIEM@KINEMA.COM', N'manager.hoankiem@kinema.com', N'MANAGER.HOANKIEM@KINEMA.COM', 1, N'AQAAAAIAAYagAAAAEFZqBraEqbQ0pUsqzLS5YWZur9V4TbPLKQ2lTtvyMKhllKLkQdrHuZKvm/GoBaUZcA==', N'6WYVMDOKMOGI4NQRH6JFVLDAL6CJMP2B', N'eab48ef2-545b-4f16-b1b3-096928559c6f', N'0901111001', 0, 0, NULL, 1, 0, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [DisplayName], [TheaterId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ManagedTheaterId], [Point]) VALUES (N'984153b2-ee29-4177-b1a7-6c9471d43aa2', N'Phan Văn Mạnh', 3, N'emp2.quan1@kinema.com', N'EMP2.QUAN1@KINEMA.COM', N'emp2.quan1@kinema.com', N'EMP2.QUAN1@KINEMA.COM', 1, N'AQAAAAIAAYagAAAAEHA0rLtG0xxW5WxjjNREeb1jaoTo9O/TXYP6CqI8X8qVaVdaGFzjhHJdAdRPSzDuMA==', N'H3RL5LYBQBV3P3TS3CBBDI625ZIYHPOO', N'694a0881-0b61-4c3d-988c-aacc7fd3fc1c', N'0902222004', 0, 0, NULL, 1, 0, NULL, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [DisplayName], [TheaterId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ManagedTheaterId], [Point]) VALUES (N'c87ca06c-0f2f-4a3f-bcf4-b1c5aabc115e', N'Đinh Văn Hùng', 1, N'emp2.hoankiem@kinema.com', N'EMP2.HOANKIEM@KINEMA.COM', N'emp2.hoankiem@kinema.com', N'EMP2.HOANKIEM@KINEMA.COM', 1, N'AQAAAAIAAYagAAAAECMztkHWPKdbE8TzIMOq7I0k92YtWCRHPmCa6xGZzeWyVMzgZcgNGK0CnPaAIJDAQA==', N'5RAT5X5NGSFZHJ2BU2CDNBR3AER7LWJI', N'3ddfefed-81b6-40c7-bd8e-e2d926baa12e', N'0902222002', 0, 0, NULL, 1, 0, NULL, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [DisplayName], [TheaterId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ManagedTheaterId], [Point]) VALUES (N'c88473fe-f41b-43c2-bf0f-8f601acbdd0f', N'Ngô Thị Giang', 1, N'emp1.hoankiem@kinema.com', N'EMP1.HOANKIEM@KINEMA.COM', N'emp1.hoankiem@kinema.com', N'EMP1.HOANKIEM@KINEMA.COM', 1, N'AQAAAAIAAYagAAAAEA7tN6KV0mmj0rfgHdb66Fb/AcZiuuKi76D6PNwUZx7Q62Hhfz7IFhEkSPMk8JEdWA==', N'WWAHHQWXGXEPQTTEXDHROIVV2T4YUXXS', N'bb11ffe1-9829-43e2-ad4e-e0131ec0e70a', N'0902222001', 0, 0, NULL, 1, 0, NULL, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [DisplayName], [TheaterId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ManagedTheaterId], [Point]) VALUES (N'd0dcc0c0-686e-42ae-9580-3fa3b57a0c6b', N'Hoàng Văn Em', 5, N'manager.haichau@kinema.com', N'MANAGER.HAICHAU@KINEMA.COM', N'manager.haichau@kinema.com', N'MANAGER.HAICHAU@KINEMA.COM', 1, N'AQAAAAIAAYagAAAAENaY3vMMClgAw1nswW5hdgGuXAguKbLDY+scJ2g6G0Jzal+toO5aMEQI54zAi0dI1g==', N'HYDFH37ETLHDPWLMLX4AODB64YUALPVI', N'e6fae6c5-7a88-4e87-b569-11f58089c96f', N'0901111005', 0, 0, NULL, 1, 0, 5, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [DisplayName], [TheaterId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ManagedTheaterId], [Point]) VALUES (N'e3ae23eb-e384-4230-87e3-69b94bca3c14', N'Nguyễn Thị Hoa', NULL, N'khachhang1@gmail.com', N'KHACHHANG1@GMAIL.COM', N'khachhang1@gmail.com', N'KHACHHANG1@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEAWA1aCHSH/t0RWViiebAoOACW1DRU0xTQf4ki8GF/l6yvub7tbe0Fwcv1NyeHNgsQ==', N'Z7OGL7JVEO65H6A5QIQRYFHFCPBDGMJC', N'47621da9-dd67-4b3b-b351-35289cc82eea', N'0903333001', 0, 0, NULL, 1, 0, NULL, 900)
GO
INSERT [dbo].[AspNetUsers] ([Id], [DisplayName], [TheaterId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ManagedTheaterId], [Point]) VALUES (N'e52a31f0-5cdc-4827-9ba9-d1fb62b4e30b', N'Lê Thị Mai', NULL, N'khachhang3@gmail.com', N'KHACHHANG3@GMAIL.COM', N'khachhang3@gmail.com', N'KHACHHANG3@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEPdO0/jCPihk8bVaFLJ5GRF6k0DraVsJrkQlUlyQFK2YBeYgdoim7TcTVVmcLSPLsA==', N'N7W2K2VFOQIWLCRXV32E5SMYG5KLO7QV', N'0a817728-fb00-4521-ba1e-2e89e665532f', N'0903333003', 0, 0, NULL, 1, 0, NULL, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [DisplayName], [TheaterId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ManagedTheaterId], [Point]) VALUES (N'eb572e77-3607-48e2-b806-ccff707e2744', N'Trần Thị Bình', 2, N'manager.caugiay@kinema.com', N'MANAGER.CAUGIAY@KINEMA.COM', N'manager.caugiay@kinema.com', N'MANAGER.CAUGIAY@KINEMA.COM', 1, N'AQAAAAIAAYagAAAAEHHE4RdXTuKkCnyTBRtNYsLKulM6h/FmdGanie3qTp0xYyDvicCj1GBryqrDWji2hw==', N'DYSRB6GXUOAM3ZIMZU6XJKAHJFX2Y5JK', N'b4eff04f-d12e-43d8-9292-93c6816220a7', N'0901111002', 0, 0, NULL, 1, 0, 2, 0)
GO
SET IDENTITY_INSERT [dbo].[BookingDetails] ON 
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (6, 2, 52, N'A4', CAST(120000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:41:18.9839071' AS DateTime2), CAST(N'2026-03-30T09:41:18.9839079' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (7, 2, 53, N'A5', CAST(120000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:41:19.0054259' AS DateTime2), CAST(N'2026-03-30T09:41:19.0054266' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (8, 2, 54, N'A6', CAST(120000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:41:19.0086576' AS DateTime2), CAST(N'2026-03-30T09:41:19.0086589' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (9, 2, 55, N'A7', CAST(120000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:41:19.0115894' AS DateTime2), CAST(N'2026-03-30T09:41:19.0115900' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (10, 2, 56, N'A8', CAST(120000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:41:19.0137281' AS DateTime2), CAST(N'2026-03-30T09:41:19.0137285' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (11, 3, 3, N'A3', CAST(120000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:44:06.8810578' AS DateTime2), CAST(N'2026-03-30T09:44:06.8810587' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (12, 3, 4, N'A4', CAST(120000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:44:06.8851339' AS DateTime2), CAST(N'2026-03-30T09:44:06.8851346' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (13, 3, 5, N'A5', CAST(120000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:44:06.8882029' AS DateTime2), CAST(N'2026-03-30T09:44:06.8882037' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (14, 3, 6, N'A6', CAST(120000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:44:06.8908072' AS DateTime2), CAST(N'2026-03-30T09:44:06.8908075' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (15, 3, 7, N'A7', CAST(120000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:44:06.9279480' AS DateTime2), CAST(N'2026-03-30T09:44:06.9279499' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (16, 4, 3, N'A3', CAST(120000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:50:38.1466114' AS DateTime2), CAST(N'2026-03-30T09:50:38.1466124' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (17, 4, 4, N'A4', CAST(120000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:50:38.1705103' AS DateTime2), CAST(N'2026-03-30T09:50:38.1705109' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (18, 4, 5, N'A5', CAST(120000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:50:38.1740841' AS DateTime2), CAST(N'2026-03-30T09:50:38.1740848' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (19, 4, 6, N'A6', CAST(120000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:50:38.1769853' AS DateTime2), CAST(N'2026-03-30T09:50:38.1769857' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (20, 4, 7, N'A7', CAST(120000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:50:38.1791897' AS DateTime2), CAST(N'2026-03-30T09:50:38.1791898' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (21, 5, 11, N'B3', CAST(120000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:51:59.2359954' AS DateTime2), CAST(N'2026-03-30T09:51:59.2359961' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (22, 5, 12, N'B4', CAST(120000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:51:59.2395851' AS DateTime2), CAST(N'2026-03-30T09:51:59.2395856' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (23, 5, 13, N'B5', CAST(120000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:51:59.2422556' AS DateTime2), CAST(N'2026-03-30T09:51:59.2422566' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (24, 5, 14, N'B6', CAST(120000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:51:59.2450733' AS DateTime2), CAST(N'2026-03-30T09:51:59.2450736' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (25, 5, 15, N'B7', CAST(120000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:51:59.2474221' AS DateTime2), CAST(N'2026-03-30T09:51:59.2474230' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (26, 6, 19, N'C3', CAST(85000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T10:14:19.1159674' AS DateTime2), CAST(N'2026-03-30T10:14:19.1159713' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (27, 6, 20, N'C4', CAST(85000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T10:14:19.1208681' AS DateTime2), CAST(N'2026-03-30T10:14:19.1208688' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (28, 6, 29, N'D5', CAST(85000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T10:14:19.1238587' AS DateTime2), CAST(N'2026-03-30T10:14:19.1238593' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (29, 6, 30, N'D6', CAST(85000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T10:14:19.1263696' AS DateTime2), CAST(N'2026-03-30T10:14:19.1263706' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (30, 7, 21, N'C5', CAST(85000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T11:13:13.9041244' AS DateTime2), CAST(N'2026-03-30T11:13:13.9041274' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (31, 7, 22, N'C6', CAST(85000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T11:13:14.1104605' AS DateTime2), CAST(N'2026-03-30T11:13:14.1104649' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (32, 7, 23, N'C7', CAST(85000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T11:13:14.1736572' AS DateTime2), CAST(N'2026-03-30T11:13:14.1736603' AS DateTime2))
GO
INSERT [dbo].[BookingDetails] ([Id], [BookingId], [SeatId], [SeatName], [TicketPrice], [CreatedAt], [LastUpdatedAt]) VALUES (33, 7, 24, N'C8', CAST(85000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T11:13:14.2239929' AS DateTime2), CAST(N'2026-03-30T11:13:14.2239961' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[BookingDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Bookings] ON 
GO
INSERT [dbo].[Bookings] ([Id], [ShowTimeId], [BookingDate], [TotalAmount], [BookingStatus], [IsActive], [CreatedAt], [LastUpdatedAt], [CheckedInBy]) VALUES (2, 366, CAST(N'2026-03-30T09:41:18.9236847' AS DateTime2), CAST(600000.00 AS Decimal(18, 2)), N'Pending', 0, CAST(N'2026-03-30T09:41:18.9236179' AS DateTime2), CAST(N'2026-03-30T09:41:18.9236181' AS DateTime2), NULL)
GO
INSERT [dbo].[Bookings] ([Id], [ShowTimeId], [BookingDate], [TotalAmount], [BookingStatus], [IsActive], [CreatedAt], [LastUpdatedAt], [CheckedInBy]) VALUES (3, 338, CAST(N'2026-03-30T09:44:06.8752125' AS DateTime2), CAST(600000.00 AS Decimal(18, 2)), N'Pending', 0, CAST(N'2026-03-30T09:44:06.8752117' AS DateTime2), CAST(N'2026-03-30T09:44:06.8752117' AS DateTime2), NULL)
GO
INSERT [dbo].[Bookings] ([Id], [ShowTimeId], [BookingDate], [TotalAmount], [BookingStatus], [IsActive], [CreatedAt], [LastUpdatedAt], [CheckedInBy]) VALUES (4, 338, CAST(N'2026-03-30T09:50:38.0273851' AS DateTime2), CAST(600000.00 AS Decimal(18, 2)), N'Failed', 0, CAST(N'2026-03-30T09:50:38.0272853' AS DateTime2), CAST(N'2026-03-30T09:50:38.0272855' AS DateTime2), NULL)
GO
INSERT [dbo].[Bookings] ([Id], [ShowTimeId], [BookingDate], [TotalAmount], [BookingStatus], [IsActive], [CreatedAt], [LastUpdatedAt], [CheckedInBy]) VALUES (5, 338, CAST(N'2026-03-30T09:51:59.2280757' AS DateTime2), CAST(600000.00 AS Decimal(18, 2)), N'Success', 1, CAST(N'2026-03-30T09:51:59.2280749' AS DateTime2), CAST(N'2026-03-30T09:51:59.2280750' AS DateTime2), NULL)
GO
INSERT [dbo].[Bookings] ([Id], [ShowTimeId], [BookingDate], [TotalAmount], [BookingStatus], [IsActive], [CreatedAt], [LastUpdatedAt], [CheckedInBy]) VALUES (6, 338, CAST(N'2026-03-30T10:14:19.1100329' AS DateTime2), CAST(340000.00 AS Decimal(18, 2)), N'Checked In', 1, CAST(N'2026-03-30T10:14:19.1100320' AS DateTime2), CAST(N'2026-03-30T10:15:34.0531302' AS DateTime2), N'c88473fe-f41b-43c2-bf0f-8f601acbdd0f')
GO
INSERT [dbo].[Bookings] ([Id], [ShowTimeId], [BookingDate], [TotalAmount], [BookingStatus], [IsActive], [CreatedAt], [LastUpdatedAt], [CheckedInBy]) VALUES (7, 338, CAST(N'2026-03-30T11:13:13.7451850' AS DateTime2), CAST(340000.00 AS Decimal(18, 2)), N'Checked In', 1, CAST(N'2026-03-30T11:13:13.7451806' AS DateTime2), CAST(N'2026-03-30T11:15:44.6390493' AS DateTime2), N'c88473fe-f41b-43c2-bf0f-8f601acbdd0f')
GO
SET IDENTITY_INSERT [dbo].[Bookings] OFF
GO
SET IDENTITY_INSERT [dbo].[ConcessionOrderDetails] ON 
GO
INSERT [dbo].[ConcessionOrderDetails] ([Id], [ConcessionOrderId], [ConcessionId], [Quantity], [Price], [CreatedAt], [LastUpdatedAt]) VALUES (1, 1, 1, 4, CAST(180000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T08:31:01.1016494' AS DateTime2), CAST(N'2026-03-30T08:31:01.1016500' AS DateTime2))
GO
INSERT [dbo].[ConcessionOrderDetails] ([Id], [ConcessionOrderId], [ConcessionId], [Quantity], [Price], [CreatedAt], [LastUpdatedAt]) VALUES (2, 1, 2, 4, CAST(260000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T08:31:01.1205328' AS DateTime2), CAST(N'2026-03-30T08:31:01.1205334' AS DateTime2))
GO
INSERT [dbo].[ConcessionOrderDetails] ([Id], [ConcessionOrderId], [ConcessionId], [Quantity], [Price], [CreatedAt], [LastUpdatedAt]) VALUES (3, 2, 1, 1, CAST(45000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:41:19.0457341' AS DateTime2), CAST(N'2026-03-30T09:41:19.0457349' AS DateTime2))
GO
INSERT [dbo].[ConcessionOrderDetails] ([Id], [ConcessionOrderId], [ConcessionId], [Quantity], [Price], [CreatedAt], [LastUpdatedAt]) VALUES (4, 2, 2, 1, CAST(65000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:41:19.0654024' AS DateTime2), CAST(N'2026-03-30T09:41:19.0654033' AS DateTime2))
GO
INSERT [dbo].[ConcessionOrderDetails] ([Id], [ConcessionOrderId], [ConcessionId], [Quantity], [Price], [CreatedAt], [LastUpdatedAt]) VALUES (5, 3, 1, 1, CAST(45000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:44:06.9411882' AS DateTime2), CAST(N'2026-03-30T09:44:06.9411888' AS DateTime2))
GO
INSERT [dbo].[ConcessionOrderDetails] ([Id], [ConcessionOrderId], [ConcessionId], [Quantity], [Price], [CreatedAt], [LastUpdatedAt]) VALUES (6, 3, 2, 1, CAST(65000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:44:06.9470379' AS DateTime2), CAST(N'2026-03-30T09:44:06.9470384' AS DateTime2))
GO
INSERT [dbo].[ConcessionOrderDetails] ([Id], [ConcessionOrderId], [ConcessionId], [Quantity], [Price], [CreatedAt], [LastUpdatedAt]) VALUES (7, 4, 1, 1, CAST(45000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:50:38.2115004' AS DateTime2), CAST(N'2026-03-30T09:50:38.2115011' AS DateTime2))
GO
INSERT [dbo].[ConcessionOrderDetails] ([Id], [ConcessionOrderId], [ConcessionId], [Quantity], [Price], [CreatedAt], [LastUpdatedAt]) VALUES (8, 4, 2, 1, CAST(65000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:50:38.2297875' AS DateTime2), CAST(N'2026-03-30T09:50:38.2297884' AS DateTime2))
GO
INSERT [dbo].[ConcessionOrderDetails] ([Id], [ConcessionOrderId], [ConcessionId], [Quantity], [Price], [CreatedAt], [LastUpdatedAt]) VALUES (9, 5, 1, 1, CAST(45000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:51:59.2644212' AS DateTime2), CAST(N'2026-03-30T09:51:59.2644218' AS DateTime2))
GO
INSERT [dbo].[ConcessionOrderDetails] ([Id], [ConcessionOrderId], [ConcessionId], [Quantity], [Price], [CreatedAt], [LastUpdatedAt]) VALUES (10, 5, 2, 1, CAST(65000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:51:59.2714246' AS DateTime2), CAST(N'2026-03-30T09:51:59.2714253' AS DateTime2))
GO
INSERT [dbo].[ConcessionOrderDetails] ([Id], [ConcessionOrderId], [ConcessionId], [Quantity], [Price], [CreatedAt], [LastUpdatedAt]) VALUES (11, 5, 3, 1, CAST(150000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:51:59.2761883' AS DateTime2), CAST(N'2026-03-30T09:51:59.2761894' AS DateTime2))
GO
INSERT [dbo].[ConcessionOrderDetails] ([Id], [ConcessionOrderId], [ConcessionId], [Quantity], [Price], [CreatedAt], [LastUpdatedAt]) VALUES (12, 5, 4, 1, CAST(35000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T09:51:59.2811054' AS DateTime2), CAST(N'2026-03-30T09:51:59.2811059' AS DateTime2))
GO
INSERT [dbo].[ConcessionOrderDetails] ([Id], [ConcessionOrderId], [ConcessionId], [Quantity], [Price], [CreatedAt], [LastUpdatedAt]) VALUES (13, 6, 1, 1, CAST(45000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T10:14:19.1376600' AS DateTime2), CAST(N'2026-03-30T10:14:19.1376606' AS DateTime2))
GO
INSERT [dbo].[ConcessionOrderDetails] ([Id], [ConcessionOrderId], [ConcessionId], [Quantity], [Price], [CreatedAt], [LastUpdatedAt]) VALUES (14, 7, 1, 1, CAST(45000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T11:13:14.5693246' AS DateTime2), CAST(N'2026-03-30T11:13:14.5693278' AS DateTime2))
GO
INSERT [dbo].[ConcessionOrderDetails] ([Id], [ConcessionOrderId], [ConcessionId], [Quantity], [Price], [CreatedAt], [LastUpdatedAt]) VALUES (15, 7, 2, 1, CAST(65000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T11:13:14.6642751' AS DateTime2), CAST(N'2026-03-30T11:13:14.6642785' AS DateTime2))
GO
INSERT [dbo].[ConcessionOrderDetails] ([Id], [ConcessionOrderId], [ConcessionId], [Quantity], [Price], [CreatedAt], [LastUpdatedAt]) VALUES (16, 7, 3, 1, CAST(150000.00 AS Decimal(18, 2)), CAST(N'2026-03-30T11:13:14.7430249' AS DateTime2), CAST(N'2026-03-30T11:13:14.7430283' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[ConcessionOrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[ConcessionOrders] ON 
GO
INSERT [dbo].[ConcessionOrders] ([Id], [OrderDate], [TotalPrice], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (1, CAST(N'2026-03-30T08:31:01.0778794' AS DateTime2), CAST(440000.00 AS Decimal(18, 2)), 0, CAST(N'2026-03-30T08:31:01.0778515' AS DateTime2), CAST(N'2026-03-30T08:31:01.0778518' AS DateTime2))
GO
INSERT [dbo].[ConcessionOrders] ([Id], [OrderDate], [TotalPrice], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (2, CAST(N'2026-03-30T09:41:19.0247687' AS DateTime2), CAST(110000.00 AS Decimal(18, 2)), 0, CAST(N'2026-03-30T09:41:19.0247451' AS DateTime2), CAST(N'2026-03-30T09:41:19.0247456' AS DateTime2))
GO
INSERT [dbo].[ConcessionOrders] ([Id], [OrderDate], [TotalPrice], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (3, CAST(N'2026-03-30T09:44:06.9356824' AS DateTime2), CAST(110000.00 AS Decimal(18, 2)), 0, CAST(N'2026-03-30T09:44:06.9356806' AS DateTime2), CAST(N'2026-03-30T09:44:06.9356809' AS DateTime2))
GO
INSERT [dbo].[ConcessionOrders] ([Id], [OrderDate], [TotalPrice], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (4, CAST(N'2026-03-30T09:50:38.1913047' AS DateTime2), CAST(110000.00 AS Decimal(18, 2)), 0, CAST(N'2026-03-30T09:50:38.1912867' AS DateTime2), CAST(N'2026-03-30T09:50:38.1912868' AS DateTime2))
GO
INSERT [dbo].[ConcessionOrders] ([Id], [OrderDate], [TotalPrice], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (5, CAST(N'2026-03-30T09:51:59.2579172' AS DateTime2), CAST(295000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T09:51:59.2579162' AS DateTime2), CAST(N'2026-03-30T09:51:59.2579163' AS DateTime2))
GO
INSERT [dbo].[ConcessionOrders] ([Id], [OrderDate], [TotalPrice], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (6, CAST(N'2026-03-30T10:14:19.1319944' AS DateTime2), CAST(45000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T10:14:19.1319937' AS DateTime2), CAST(N'2026-03-30T10:14:19.1319938' AS DateTime2))
GO
INSERT [dbo].[ConcessionOrders] ([Id], [OrderDate], [TotalPrice], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (7, CAST(N'2026-03-30T11:13:14.4590288' AS DateTime2), CAST(260000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T11:13:14.4590248' AS DateTime2), CAST(N'2026-03-30T11:13:14.4590253' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[ConcessionOrders] OFF
GO
SET IDENTITY_INSERT [dbo].[Concessions] ON 
GO
INSERT [dbo].[Concessions] ([Id], [Name], [Description], [Price], [ImageUrl], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved]) VALUES (1, N'Bắp rang bơ nhỏ', N'Bắp rang bơ size S thơm ngon.', CAST(45000.00 AS Decimal(18, 2)), N'download (8).jpg', 1, CAST(N'2026-03-30T08:23:27.8196255' AS DateTime2), CAST(N'2026-03-30T08:23:27.8196269' AS DateTime2), 0)
GO
INSERT [dbo].[Concessions] ([Id], [Name], [Description], [Price], [ImageUrl], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved]) VALUES (2, N'Bắp rang bơ lớn', N'Bắp rang bơ size L siêu to.', CAST(65000.00 AS Decimal(18, 2)), N'download (8).jpg', 1, CAST(N'2026-03-30T08:23:27.8197701' AS DateTime2), CAST(N'2026-03-30T08:23:27.8197703' AS DateTime2), 0)
GO
INSERT [dbo].[Concessions] ([Id], [Name], [Description], [Price], [ImageUrl], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved]) VALUES (3, N'Combo đôi (2 bắp + 2 nước)', N'2 bắp lớn + 2 ly Pepsi 32oz.', CAST(150000.00 AS Decimal(18, 2)), N'images.jpg', 1, CAST(N'2026-03-30T08:23:27.8197706' AS DateTime2), CAST(N'2026-03-30T08:23:27.8197706' AS DateTime2), 0)
GO
INSERT [dbo].[Concessions] ([Id], [Name], [Description], [Price], [ImageUrl], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved]) VALUES (4, N'Pepsi 32oz', N'Pepsi size lớn không giới hạn refill.', CAST(35000.00 AS Decimal(18, 2)), N'download (9).jpg', 1, CAST(N'2026-03-30T08:23:27.8197708' AS DateTime2), CAST(N'2026-03-30T08:23:27.8197709' AS DateTime2), 0)
GO
INSERT [dbo].[Concessions] ([Id], [Name], [Description], [Price], [ImageUrl], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved]) VALUES (5, N'Coca-Cola 32oz', N'Coca-Cola size lớn không giới hạn refill.', CAST(35000.00 AS Decimal(18, 2)), N'download (9).jpg', 1, CAST(N'2026-03-30T08:23:27.8197710' AS DateTime2), CAST(N'2026-03-30T08:23:27.8197710' AS DateTime2), 0)
GO
INSERT [dbo].[Concessions] ([Id], [Name], [Description], [Price], [ImageUrl], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved]) VALUES (6, N'Nước suối Aquafina', N'Nước khoáng đóng chai 500ml.', CAST(20000.00 AS Decimal(18, 2)), NULL, 1, CAST(N'2026-03-30T08:23:27.8197711' AS DateTime2), CAST(N'2026-03-30T09:56:02.4996554' AS DateTime2), 1)
GO
INSERT [dbo].[Concessions] ([Id], [Name], [Description], [Price], [ImageUrl], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved]) VALUES (7, N'Hotdog', N'Xúc xích nướng kẹp bánh mì.', CAST(40000.00 AS Decimal(18, 2)), NULL, 1, CAST(N'2026-03-30T08:23:27.8197712' AS DateTime2), CAST(N'2026-03-30T09:56:04.9262696' AS DateTime2), 1)
GO
INSERT [dbo].[Concessions] ([Id], [Name], [Description], [Price], [ImageUrl], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved]) VALUES (8, N'Nachos & Cheese', N'Bánh nachos giòn với sốt phô mai.', CAST(55000.00 AS Decimal(18, 2)), NULL, 1, CAST(N'2026-03-30T08:23:27.8197714' AS DateTime2), CAST(N'2026-03-30T09:56:07.1484123' AS DateTime2), 1)
GO
SET IDENTITY_INSERT [dbo].[Concessions] OFF
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 
GO
INSERT [dbo].[Movies] ([Id], [Title], [Genre], [Director], [Cast], [Description], [Duration], [ReleaseDate], [PosterUrl], [TrailerUrl], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (1, N'Inception', N'Sci-Fi', N'Christopher Nolan', N'Leonardo DiCaprio, Joseph Gordon-Levitt', N'A thief enters dreams to steal secrets.', 148, CAST(N'2010-07-16' AS Date), N'b7978e2f-b463-4cb4-a005-65ae052e85de.jpg', NULL, 1, CAST(N'2026-03-30T08:23:27.5666179' AS DateTime2), CAST(N'2026-03-30T08:23:27.5666197' AS DateTime2))
GO
INSERT [dbo].[Movies] ([Id], [Title], [Genre], [Director], [Cast], [Description], [Duration], [ReleaseDate], [PosterUrl], [TrailerUrl], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (2, N'Interstellar', N'Sci-Fi', N'Christopher Nolan', N'Matthew McConaughey, Anne Hathaway', N'A team travels beyond the galaxy.', 169, CAST(N'2014-11-07' AS Date), N'4cbc2f69-56eb-45b2-9106-55c6ce08d586.jpg', NULL, 1, CAST(N'2026-03-30T08:23:27.5851176' AS DateTime2), CAST(N'2026-03-30T08:23:27.5851194' AS DateTime2))
GO
INSERT [dbo].[Movies] ([Id], [Title], [Genre], [Director], [Cast], [Description], [Duration], [ReleaseDate], [PosterUrl], [TrailerUrl], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (10, N'Kidnapped: Elizabeth Smart', N'Crime', N'Chris Bessounian', N'Alana Boden, Skeet Ulrich', N'Câu chuyện có thật về Elizabeth Smart bị bắt cóc năm 2002.', 88, CAST(N'2017-11-18' AS Date), N'download (6).jpg', NULL, 0, CAST(N'2026-03-30T08:43:40.4030582' AS DateTime2), CAST(N'2026-03-30T08:43:40.4031253' AS DateTime2))
GO
INSERT [dbo].[Movies] ([Id], [Title], [Genre], [Director], [Cast], [Description], [Duration], [ReleaseDate], [PosterUrl], [TrailerUrl], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (11, N'Murder Report', N'Thriller', N'James Hyun', N'Park Seo-joon, Han So-hee', N'Thám tử điều tra vụ án mạng bí ẩn trong lòng thành phố.', 112, CAST(N'2025-08-10' AS Date), N'download.jpg', NULL, 1, CAST(N'2026-03-30T08:43:40.4373919' AS DateTime2), CAST(N'2026-03-30T08:43:40.4373926' AS DateTime2))
GO
INSERT [dbo].[Movies] ([Id], [Title], [Genre], [Director], [Cast], [Description], [Duration], [ReleaseDate], [PosterUrl], [TrailerUrl], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (12, N'The Rip', N'Action', N'Antoine Fuqua', N'Joel Kinnaman, Eiza González', N'Đội đặc nhiệm thực hiện nhiệm vụ giải cứu con tin nguy hiểm.', 118, CAST(N'2025-09-05' AS Date), N'download (2).jpg', NULL, 1, CAST(N'2026-03-30T08:43:40.4385148' AS DateTime2), CAST(N'2026-03-30T08:43:40.4385153' AS DateTime2))
GO
INSERT [dbo].[Movies] ([Id], [Title], [Genre], [Director], [Cast], [Description], [Duration], [ReleaseDate], [PosterUrl], [TrailerUrl], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (13, N'The Swedish Connection', N'Thriller', N'Magnus Martens', N'Gustaf Skarsgård, Rebecca Ferguson', N'Điệp viên Thụy Điển đối mặt với tổ chức tội phạm xuyên quốc gia.', 124, CAST(N'2025-10-03' AS Date), N'download (5).jpg', NULL, 1, CAST(N'2026-03-30T08:43:40.4389019' AS DateTime2), CAST(N'2026-03-30T08:43:40.4389023' AS DateTime2))
GO
INSERT [dbo].[Movies] ([Id], [Title], [Genre], [Director], [Cast], [Description], [Duration], [ReleaseDate], [PosterUrl], [TrailerUrl], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (14, N'War Machine', N'Action', N'David Michôd', N'Brad Pitt, Tilda Swinton', N'Vị tướng lừng danh đối mặt với cuộc chiến không hồi kết.', 122, CAST(N'2025-07-22' AS Date), N'download (7).jpg', NULL, 1, CAST(N'2026-03-30T08:43:40.4392770' AS DateTime2), CAST(N'2026-03-30T08:43:40.4392773' AS DateTime2))
GO
INSERT [dbo].[Movies] ([Id], [Title], [Genre], [Director], [Cast], [Description], [Duration], [ReleaseDate], [PosterUrl], [TrailerUrl], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (15, N'Lilo & Stitch', N'Animation', N'Dean Fleischer Camp', N'Maia Kealoha, Sydney Agudong', N'Cô bé Lilo kết bạn với sinh vật ngoài hành tinh tên Stitch.', 108, CAST(N'2026-05-23' AS Date), N'31b5233a-2e41-41e6-94bf-f3f270769fa8.jpg', NULL, 1, CAST(N'2026-03-30T08:43:40.4397774' AS DateTime2), CAST(N'2026-03-30T08:43:40.4397777' AS DateTime2))
GO
INSERT [dbo].[Movies] ([Id], [Title], [Genre], [Director], [Cast], [Description], [Duration], [ReleaseDate], [PosterUrl], [TrailerUrl], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (16, N'Cosmic Princess Kaguya', N'Animation', N'Yuki Tanaka', N'Kana Hanazawa, Hiroshi Kamiya', N'Công chúa từ vũ trụ bắt đầu hành trình khám phá trái đất.', 115, CAST(N'2026-06-14' AS Date), N'download (1).jpg', NULL, 1, CAST(N'2026-03-30T08:43:40.4401452' AS DateTime2), CAST(N'2026-03-30T08:43:40.4401456' AS DateTime2))
GO
INSERT [dbo].[Movies] ([Id], [Title], [Genre], [Director], [Cast], [Description], [Duration], [ReleaseDate], [PosterUrl], [TrailerUrl], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (17, N'People We Meet on Vacation', N'Romance', N'Alex Scharfman', N'Victoria Justice, Dylan Sprouse', N'Hai người bạn thân tìm lại tình cảm qua chuyến du lịch hè.', 103, CAST(N'2026-07-04' AS Date), N'download (3).jpg', NULL, 1, CAST(N'2026-03-30T08:43:40.4405156' AS DateTime2), CAST(N'2026-03-30T08:43:40.4405160' AS DateTime2))
GO
INSERT [dbo].[Movies] ([Id], [Title], [Genre], [Director], [Cast], [Description], [Duration], [ReleaseDate], [PosterUrl], [TrailerUrl], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (18, N'From the Ashes: The Pit', N'Drama', N'Shawn Levy', N'Zendaya, Florence Pugh', N'Bốn cô gái vượt qua nghịch cảnh để tìm lại chính mình.', 130, CAST(N'2026-08-21' AS Date), N'download (4).jpg', NULL, 1, CAST(N'2026-03-30T08:43:40.4408805' AS DateTime2), CAST(N'2026-03-30T08:43:40.4408809' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[Payments] ON 
GO
INSERT [dbo].[Payments] ([Id], [UserId], [ConcessionOrderId], [BookingId], [Email], [Name], [PhoneNumber], [TotalAmount], [PaymentMethod], [PaymentDate], [PaymentStatus], [CreatedAt], [LastUpdatedAt], [EmployeeId], [BonusPointsUsed], [DiscountAmount], [FinalAmount], [PromotionId]) VALUES (2, N'e3ae23eb-e384-4230-87e3-69b94bca3c14', 2, 2, N'khachhang1@gmail.com', N'Nguyễn Thị Hoa', N'0902222002', CAST(710000.00 AS Decimal(18, 2)), N'VnPay', CAST(N'2026-03-30T09:41:19.0828635' AS DateTime2), N'Pending', CAST(N'2026-03-30T09:41:19.0823216' AS DateTime2), CAST(N'2026-03-30T09:41:19.0823223' AS DateTime2), NULL, NULL, CAST(142000.00 AS Decimal(18, 2)), CAST(568000.00 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[Payments] ([Id], [UserId], [ConcessionOrderId], [BookingId], [Email], [Name], [PhoneNumber], [TotalAmount], [PaymentMethod], [PaymentDate], [PaymentStatus], [CreatedAt], [LastUpdatedAt], [EmployeeId], [BonusPointsUsed], [DiscountAmount], [FinalAmount], [PromotionId]) VALUES (3, N'e3ae23eb-e384-4230-87e3-69b94bca3c14', 3, 3, N'khachhang1@gmail.com', N'Nguyễn Thị Hoa', N'0902222002', CAST(710000.00 AS Decimal(18, 2)), N'VnPay', CAST(N'2026-03-30T09:44:06.9579227' AS DateTime2), N'Pending', CAST(N'2026-03-30T09:44:06.9579170' AS DateTime2), CAST(N'2026-03-30T09:44:06.9579181' AS DateTime2), NULL, NULL, CAST(142000.00 AS Decimal(18, 2)), CAST(568000.00 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[Payments] ([Id], [UserId], [ConcessionOrderId], [BookingId], [Email], [Name], [PhoneNumber], [TotalAmount], [PaymentMethod], [PaymentDate], [PaymentStatus], [CreatedAt], [LastUpdatedAt], [EmployeeId], [BonusPointsUsed], [DiscountAmount], [FinalAmount], [PromotionId]) VALUES (4, N'e3ae23eb-e384-4230-87e3-69b94bca3c14', 4, 4, N'khachhang1@gmail.com', N'Nguyễn Thị Hoa', N'0902222002', CAST(710000.00 AS Decimal(18, 2)), N'VnPay', CAST(N'2026-03-30T09:50:38.2532052' AS DateTime2), N'Failed', CAST(N'2026-03-30T09:50:38.2525855' AS DateTime2), CAST(N'2026-03-30T09:50:54.3450349' AS DateTime2), NULL, NULL, CAST(142000.00 AS Decimal(18, 2)), CAST(568000.00 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[Payments] ([Id], [UserId], [ConcessionOrderId], [BookingId], [Email], [Name], [PhoneNumber], [TotalAmount], [PaymentMethod], [PaymentDate], [PaymentStatus], [CreatedAt], [LastUpdatedAt], [EmployeeId], [BonusPointsUsed], [DiscountAmount], [FinalAmount], [PromotionId]) VALUES (5, N'e3ae23eb-e384-4230-87e3-69b94bca3c14', 5, 5, N'khachhang1@gmail.com', N'Nguyễn Thị Hoa', N'0902222002', CAST(895000.00 AS Decimal(18, 2)), N'VnPay', CAST(N'2026-03-30T09:51:59.2901463' AS DateTime2), N'Success', CAST(N'2026-03-30T09:51:59.2901422' AS DateTime2), CAST(N'2026-03-30T09:52:39.0197062' AS DateTime2), NULL, NULL, CAST(179000.00 AS Decimal(18, 2)), CAST(716000.00 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[Payments] ([Id], [UserId], [ConcessionOrderId], [BookingId], [Email], [Name], [PhoneNumber], [TotalAmount], [PaymentMethod], [PaymentDate], [PaymentStatus], [CreatedAt], [LastUpdatedAt], [EmployeeId], [BonusPointsUsed], [DiscountAmount], [FinalAmount], [PromotionId]) VALUES (6, N'e3ae23eb-e384-4230-87e3-69b94bca3c14', 6, 6, N'khachhang1@gmail.com', N'Nguyễn Thị Hoa', N'0902222001', CAST(385000.00 AS Decimal(18, 2)), N'VnPay', CAST(N'2026-03-30T10:14:19.1746140' AS DateTime2), N'Success', CAST(N'2026-03-30T10:14:19.1746055' AS DateTime2), CAST(N'2026-03-30T10:14:47.9940199' AS DateTime2), NULL, NULL, CAST(77000.00 AS Decimal(18, 2)), CAST(308000.00 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[Payments] ([Id], [UserId], [ConcessionOrderId], [BookingId], [Email], [Name], [PhoneNumber], [TotalAmount], [PaymentMethod], [PaymentDate], [PaymentStatus], [CreatedAt], [LastUpdatedAt], [EmployeeId], [BonusPointsUsed], [DiscountAmount], [FinalAmount], [PromotionId]) VALUES (7, N'70af940f-7b07-43f7-98ef-4b1558cdd436', 7, 7, N'khachhang4@gmail.com', N'Trần Văn Nam', N'0902222001', CAST(600000.00 AS Decimal(18, 2)), N'VnPay', CAST(N'2026-03-30T11:13:14.8820032' AS DateTime2), N'Success', CAST(N'2026-03-30T11:13:14.8819734' AS DateTime2), CAST(N'2026-03-30T11:14:12.7898458' AS DateTime2), NULL, NULL, CAST(120000.00 AS Decimal(18, 2)), CAST(480000.00 AS Decimal(18, 2)), 3)
GO
SET IDENTITY_INSERT [dbo].[Payments] OFF
GO
SET IDENTITY_INSERT [dbo].[Promotions] ON 
GO
INSERT [dbo].[Promotions] ([Id], [Description], [DiscountType], [DiscountValue], [Quantity], [StartDate], [EndDate], [IsActive], [CreatedAt], [LastUpdatedAt], [UsedQuantity]) VALUES (1, N'Giảm 10% cho mọi đơn đặt vé', N'Percentage', 10, 200, CAST(N'2026-03-30' AS Date), CAST(N'2026-06-30' AS Date), 1, CAST(N'2026-03-30T08:23:27.8529723' AS DateTime2), CAST(N'2026-03-30T08:23:27.8529726' AS DateTime2), 1)
GO
INSERT [dbo].[Promotions] ([Id], [Description], [DiscountType], [DiscountValue], [Quantity], [StartDate], [EndDate], [IsActive], [CreatedAt], [LastUpdatedAt], [UsedQuantity]) VALUES (2, N'Giảm 50,000đ cho đơn từ 150,000đ', N'FixedAmount', 50000, 100, CAST(N'2026-03-30' AS Date), CAST(N'2026-04-30' AS Date), 1, CAST(N'2026-03-30T08:23:27.8532287' AS DateTime2), CAST(N'2026-03-30T08:23:27.8532289' AS DateTime2), 0)
GO
INSERT [dbo].[Promotions] ([Id], [Description], [DiscountType], [DiscountValue], [Quantity], [StartDate], [EndDate], [IsActive], [CreatedAt], [LastUpdatedAt], [UsedQuantity]) VALUES (3, N'Sinh viên: Giảm 20% (cần xuất trình thẻ sinh viên)', N'Percentage', 20, 300, CAST(N'2026-03-30' AS Date), CAST(N'2026-09-30' AS Date), 1, CAST(N'2026-03-30T08:23:27.8532296' AS DateTime2), CAST(N'2026-03-30T08:23:27.8532296' AS DateTime2), 6)
GO
SET IDENTITY_INSERT [dbo].[Promotions] OFF
GO
SET IDENTITY_INSERT [dbo].[Provinces] ON 
GO
INSERT [dbo].[Provinces] ([Id], [Name]) VALUES (1, N'Hà Nội')
GO
INSERT [dbo].[Provinces] ([Id], [Name]) VALUES (2, N'Hồ Chí Minh')
GO
INSERT [dbo].[Provinces] ([Id], [Name]) VALUES (3, N'Đà Nẵng')
GO
INSERT [dbo].[Provinces] ([Id], [Name]) VALUES (4, N'Cần Thơ')
GO
INSERT [dbo].[Provinces] ([Id], [Name]) VALUES (5, N'Hải Phòng')
GO
SET IDENTITY_INSERT [dbo].[Provinces] OFF
GO
SET IDENTITY_INSERT [dbo].[Screens] ON 
GO
INSERT [dbo].[Screens] ([Id], [Name], [TheaterId], [Rows], [Columns], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (1, N'Screen 01', 1, 6, 8, 1, CAST(N'2026-03-30T08:23:27.3485010' AS DateTime2), CAST(N'2026-03-30T08:23:27.3485025' AS DateTime2))
GO
INSERT [dbo].[Screens] ([Id], [Name], [TheaterId], [Rows], [Columns], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (2, N'Screen 02', 1, 5, 10, 1, CAST(N'2026-03-30T08:23:27.3487221' AS DateTime2), CAST(N'2026-03-30T08:23:27.3487224' AS DateTime2))
GO
INSERT [dbo].[Screens] ([Id], [Name], [TheaterId], [Rows], [Columns], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (3, N'Screen 01', 2, 6, 8, 1, CAST(N'2026-03-30T08:23:27.3487229' AS DateTime2), CAST(N'2026-03-30T08:23:27.3487230' AS DateTime2))
GO
INSERT [dbo].[Screens] ([Id], [Name], [TheaterId], [Rows], [Columns], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (4, N'Screen 02', 2, 5, 10, 1, CAST(N'2026-03-30T08:23:27.3487231' AS DateTime2), CAST(N'2026-03-30T08:23:27.3487231' AS DateTime2))
GO
INSERT [dbo].[Screens] ([Id], [Name], [TheaterId], [Rows], [Columns], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (5, N'Screen 01', 3, 6, 8, 1, CAST(N'2026-03-30T08:23:27.3487233' AS DateTime2), CAST(N'2026-03-30T08:23:27.3487234' AS DateTime2))
GO
INSERT [dbo].[Screens] ([Id], [Name], [TheaterId], [Rows], [Columns], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (6, N'Screen 02', 3, 5, 10, 1, CAST(N'2026-03-30T08:23:27.3487236' AS DateTime2), CAST(N'2026-03-30T08:23:27.3487237' AS DateTime2))
GO
INSERT [dbo].[Screens] ([Id], [Name], [TheaterId], [Rows], [Columns], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (7, N'Screen 01', 4, 6, 8, 1, CAST(N'2026-03-30T08:23:27.3487238' AS DateTime2), CAST(N'2026-03-30T08:23:27.3487238' AS DateTime2))
GO
INSERT [dbo].[Screens] ([Id], [Name], [TheaterId], [Rows], [Columns], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (8, N'Screen 02', 4, 5, 10, 1, CAST(N'2026-03-30T08:23:27.3487239' AS DateTime2), CAST(N'2026-03-30T08:23:27.3487240' AS DateTime2))
GO
INSERT [dbo].[Screens] ([Id], [Name], [TheaterId], [Rows], [Columns], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (9, N'Screen 01', 5, 6, 8, 1, CAST(N'2026-03-30T08:23:27.3487240' AS DateTime2), CAST(N'2026-03-30T08:23:27.3487241' AS DateTime2))
GO
INSERT [dbo].[Screens] ([Id], [Name], [TheaterId], [Rows], [Columns], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (10, N'Screen 02', 5, 5, 10, 1, CAST(N'2026-03-30T08:23:27.3487243' AS DateTime2), CAST(N'2026-03-30T08:23:27.3487243' AS DateTime2))
GO
INSERT [dbo].[Screens] ([Id], [Name], [TheaterId], [Rows], [Columns], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (11, N'Screen 01', 6, 6, 8, 1, CAST(N'2026-03-30T08:23:27.3487244' AS DateTime2), CAST(N'2026-03-30T08:23:27.3487244' AS DateTime2))
GO
INSERT [dbo].[Screens] ([Id], [Name], [TheaterId], [Rows], [Columns], [IsActive], [CreatedAt], [LastUpdatedAt]) VALUES (12, N'Screen 02', 6, 5, 10, 1, CAST(N'2026-03-30T08:23:27.3487245' AS DateTime2), CAST(N'2026-03-30T08:23:27.3487246' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Screens] OFF
GO
SET IDENTITY_INSERT [dbo].[Seats] ON 
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (1, N'A', 1, 1, 1, CAST(N'2026-03-30T08:23:27.3772655' AS DateTime2), CAST(N'2026-03-30T08:23:27.3772675' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (2, N'A', 2, 1, 1, CAST(N'2026-03-30T08:23:27.3774501' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774503' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (3, N'A', 3, 1, 1, CAST(N'2026-03-30T08:23:27.3774505' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774505' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (4, N'A', 4, 1, 1, CAST(N'2026-03-30T08:23:27.3774506' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774507' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (5, N'A', 5, 1, 1, CAST(N'2026-03-30T08:23:27.3774507' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774508' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (6, N'A', 6, 1, 1, CAST(N'2026-03-30T08:23:27.3774509' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774510' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (7, N'A', 7, 1, 1, CAST(N'2026-03-30T08:23:27.3774511' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774511' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (8, N'A', 8, 1, 1, CAST(N'2026-03-30T08:23:27.3774512' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774512' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (9, N'B', 1, 1, 1, CAST(N'2026-03-30T08:23:27.3774515' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774515' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (10, N'B', 2, 1, 1, CAST(N'2026-03-30T08:23:27.3774516' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774517' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (11, N'B', 3, 1, 1, CAST(N'2026-03-30T08:23:27.3774517' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774518' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (12, N'B', 4, 1, 1, CAST(N'2026-03-30T08:23:27.3774519' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774519' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (13, N'B', 5, 1, 1, CAST(N'2026-03-30T08:23:27.3774520' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774520' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (14, N'B', 6, 1, 1, CAST(N'2026-03-30T08:23:27.3774521' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774521' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (15, N'B', 7, 1, 1, CAST(N'2026-03-30T08:23:27.3774522' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774522' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (16, N'B', 8, 1, 1, CAST(N'2026-03-30T08:23:27.3774523' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774523' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (17, N'C', 1, 1, 1, CAST(N'2026-03-30T08:23:27.3774524' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774525' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (18, N'C', 2, 1, 1, CAST(N'2026-03-30T08:23:27.3774526' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774526' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (19, N'C', 3, 1, 1, CAST(N'2026-03-30T08:23:27.3774527' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774527' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (20, N'C', 4, 1, 1, CAST(N'2026-03-30T08:23:27.3774528' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774528' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (21, N'C', 5, 1, 1, CAST(N'2026-03-30T08:23:27.3774529' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774529' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (22, N'C', 6, 1, 1, CAST(N'2026-03-30T08:23:27.3774530' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774530' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (23, N'C', 7, 1, 1, CAST(N'2026-03-30T08:23:27.3774531' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774531' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (24, N'C', 8, 1, 1, CAST(N'2026-03-30T08:23:27.3774532' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774532' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (25, N'D', 1, 1, 1, CAST(N'2026-03-30T08:23:27.3774533' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774534' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (26, N'D', 2, 1, 1, CAST(N'2026-03-30T08:23:27.3774534' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774535' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (27, N'D', 3, 1, 1, CAST(N'2026-03-30T08:23:27.3774535' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774536' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (28, N'D', 4, 1, 1, CAST(N'2026-03-30T08:23:27.3774536' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774537' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (29, N'D', 5, 1, 1, CAST(N'2026-03-30T08:23:27.3774537' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774538' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (30, N'D', 6, 1, 1, CAST(N'2026-03-30T08:23:27.3774538' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774539' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (31, N'D', 7, 1, 1, CAST(N'2026-03-30T08:23:27.3774539' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774540' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (32, N'D', 8, 1, 1, CAST(N'2026-03-30T08:23:27.3774540' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774541' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (33, N'E', 1, 1, 1, CAST(N'2026-03-30T08:23:27.3774542' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774542' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (34, N'E', 2, 1, 1, CAST(N'2026-03-30T08:23:27.3774543' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774544' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (35, N'E', 3, 1, 1, CAST(N'2026-03-30T08:23:27.3774544' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774545' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (36, N'E', 4, 1, 1, CAST(N'2026-03-30T08:23:27.3774545' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774546' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (37, N'E', 5, 1, 1, CAST(N'2026-03-30T08:23:27.3774546' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774547' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (38, N'E', 6, 1, 1, CAST(N'2026-03-30T08:23:27.3774547' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774548' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (39, N'E', 7, 1, 1, CAST(N'2026-03-30T08:23:27.3774548' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774549' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (40, N'E', 8, 1, 1, CAST(N'2026-03-30T08:23:27.3774590' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774591' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (41, N'F', 1, 1, 1, CAST(N'2026-03-30T08:23:27.3774592' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774592' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (42, N'F', 2, 1, 1, CAST(N'2026-03-30T08:23:27.3774593' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774593' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (43, N'F', 3, 1, 1, CAST(N'2026-03-30T08:23:27.3774594' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774594' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (44, N'F', 4, 1, 1, CAST(N'2026-03-30T08:23:27.3774595' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774595' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (45, N'F', 5, 1, 1, CAST(N'2026-03-30T08:23:27.3774596' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774596' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (46, N'F', 6, 1, 1, CAST(N'2026-03-30T08:23:27.3774668' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774669' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (47, N'F', 7, 1, 1, CAST(N'2026-03-30T08:23:27.3774670' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774670' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (48, N'F', 8, 1, 1, CAST(N'2026-03-30T08:23:27.3774671' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774671' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (49, N'A', 1, 2, 1, CAST(N'2026-03-30T08:23:27.3774674' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774675' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (50, N'A', 2, 2, 1, CAST(N'2026-03-30T08:23:27.3774675' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774676' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (51, N'A', 3, 2, 1, CAST(N'2026-03-30T08:23:27.3774677' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774677' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (52, N'A', 4, 2, 1, CAST(N'2026-03-30T08:23:27.3774678' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774678' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (53, N'A', 5, 2, 1, CAST(N'2026-03-30T08:23:27.3774679' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774679' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (54, N'A', 6, 2, 1, CAST(N'2026-03-30T08:23:27.3774680' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774680' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (55, N'A', 7, 2, 1, CAST(N'2026-03-30T08:23:27.3774681' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774681' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (56, N'A', 8, 2, 1, CAST(N'2026-03-30T08:23:27.3774682' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774682' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (57, N'A', 9, 2, 1, CAST(N'2026-03-30T08:23:27.3774683' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774683' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (58, N'A', 10, 2, 1, CAST(N'2026-03-30T08:23:27.3774684' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774684' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (59, N'B', 1, 2, 1, CAST(N'2026-03-30T08:23:27.3774685' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774685' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (60, N'B', 2, 2, 1, CAST(N'2026-03-30T08:23:27.3774686' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774686' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (61, N'B', 3, 2, 1, CAST(N'2026-03-30T08:23:27.3774687' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774687' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (62, N'B', 4, 2, 1, CAST(N'2026-03-30T08:23:27.3774688' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774688' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (63, N'B', 5, 2, 1, CAST(N'2026-03-30T08:23:27.3774689' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774689' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (64, N'B', 6, 2, 1, CAST(N'2026-03-30T08:23:27.3774690' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774690' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (65, N'B', 7, 2, 1, CAST(N'2026-03-30T08:23:27.3774691' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774691' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (66, N'B', 8, 2, 1, CAST(N'2026-03-30T08:23:27.3774695' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774696' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (67, N'B', 9, 2, 1, CAST(N'2026-03-30T08:23:27.3774696' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774697' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (68, N'B', 10, 2, 1, CAST(N'2026-03-30T08:23:27.3774697' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774698' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (69, N'C', 1, 2, 1, CAST(N'2026-03-30T08:23:27.3774699' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774699' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (70, N'C', 2, 2, 1, CAST(N'2026-03-30T08:23:27.3774700' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774700' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (71, N'C', 3, 2, 1, CAST(N'2026-03-30T08:23:27.3774701' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774701' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (72, N'C', 4, 2, 1, CAST(N'2026-03-30T08:23:27.3774702' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774702' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (73, N'C', 5, 2, 1, CAST(N'2026-03-30T08:23:27.3774703' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774703' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (74, N'C', 6, 2, 1, CAST(N'2026-03-30T08:23:27.3774704' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774704' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (75, N'C', 7, 2, 1, CAST(N'2026-03-30T08:23:27.3774705' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774705' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (76, N'C', 8, 2, 1, CAST(N'2026-03-30T08:23:27.3774706' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774706' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (77, N'C', 9, 2, 1, CAST(N'2026-03-30T08:23:27.3774707' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774707' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (78, N'C', 10, 2, 1, CAST(N'2026-03-30T08:23:27.3774708' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774708' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (79, N'D', 1, 2, 1, CAST(N'2026-03-30T08:23:27.3774709' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774709' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (80, N'D', 2, 2, 1, CAST(N'2026-03-30T08:23:27.3774710' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774710' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (81, N'D', 3, 2, 1, CAST(N'2026-03-30T08:23:27.3774711' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774711' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (82, N'D', 4, 2, 1, CAST(N'2026-03-30T08:23:27.3774712' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774712' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (83, N'D', 5, 2, 1, CAST(N'2026-03-30T08:23:27.3774713' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774713' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (84, N'D', 6, 2, 1, CAST(N'2026-03-30T08:23:27.3774714' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774714' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (85, N'D', 7, 2, 1, CAST(N'2026-03-30T08:23:27.3774715' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774715' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (86, N'D', 8, 2, 1, CAST(N'2026-03-30T08:23:27.3774716' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774716' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (87, N'D', 9, 2, 1, CAST(N'2026-03-30T08:23:27.3774717' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774717' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (88, N'D', 10, 2, 1, CAST(N'2026-03-30T08:23:27.3774718' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774718' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (89, N'E', 1, 2, 1, CAST(N'2026-03-30T08:23:27.3774719' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774720' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (90, N'E', 2, 2, 1, CAST(N'2026-03-30T08:23:27.3774720' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774721' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (91, N'E', 3, 2, 1, CAST(N'2026-03-30T08:23:27.3774721' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774722' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (92, N'E', 4, 2, 1, CAST(N'2026-03-30T08:23:27.3774722' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774723' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (93, N'E', 5, 2, 1, CAST(N'2026-03-30T08:23:27.3774723' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774723' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (94, N'E', 6, 2, 1, CAST(N'2026-03-30T08:23:27.3774724' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774724' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (95, N'E', 7, 2, 1, CAST(N'2026-03-30T08:23:27.3774725' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774725' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (96, N'E', 8, 2, 1, CAST(N'2026-03-30T08:23:27.3774726' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774726' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (97, N'E', 9, 2, 1, CAST(N'2026-03-30T08:23:27.3774727' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774727' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (98, N'E', 10, 2, 1, CAST(N'2026-03-30T08:23:27.3774728' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774728' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (99, N'A', 1, 3, 1, CAST(N'2026-03-30T08:23:27.3774730' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774730' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (100, N'A', 2, 3, 1, CAST(N'2026-03-30T08:23:27.3774731' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774731' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (101, N'A', 3, 3, 1, CAST(N'2026-03-30T08:23:27.3774732' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774732' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (102, N'A', 4, 3, 1, CAST(N'2026-03-30T08:23:27.3774733' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774733' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (103, N'A', 5, 3, 1, CAST(N'2026-03-30T08:23:27.3774734' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774734' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (104, N'A', 6, 3, 1, CAST(N'2026-03-30T08:23:27.3774735' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774735' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (105, N'A', 7, 3, 1, CAST(N'2026-03-30T08:23:27.3774736' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774736' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (106, N'A', 8, 3, 1, CAST(N'2026-03-30T08:23:27.3774737' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774737' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (107, N'B', 1, 3, 1, CAST(N'2026-03-30T08:23:27.3774738' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774739' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (108, N'B', 2, 3, 1, CAST(N'2026-03-30T08:23:27.3774739' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774740' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (109, N'B', 3, 3, 1, CAST(N'2026-03-30T08:23:27.3774740' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774741' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (110, N'B', 4, 3, 1, CAST(N'2026-03-30T08:23:27.3774741' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774742' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (111, N'B', 5, 3, 1, CAST(N'2026-03-30T08:23:27.3774742' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774743' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (112, N'B', 6, 3, 1, CAST(N'2026-03-30T08:23:27.3774743' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774743' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (113, N'B', 7, 3, 1, CAST(N'2026-03-30T08:23:27.3774744' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774744' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (114, N'B', 8, 3, 1, CAST(N'2026-03-30T08:23:27.3774745' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774745' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (115, N'C', 1, 3, 1, CAST(N'2026-03-30T08:23:27.3774746' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774747' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (116, N'C', 2, 3, 1, CAST(N'2026-03-30T08:23:27.3774748' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774748' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (117, N'C', 3, 3, 1, CAST(N'2026-03-30T08:23:27.3774749' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774749' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (118, N'C', 4, 3, 1, CAST(N'2026-03-30T08:23:27.3774749' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774750' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (119, N'C', 5, 3, 1, CAST(N'2026-03-30T08:23:27.3774750' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774751' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (120, N'C', 6, 3, 1, CAST(N'2026-03-30T08:23:27.3774751' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774752' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (121, N'C', 7, 3, 1, CAST(N'2026-03-30T08:23:27.3774752' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774753' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (122, N'C', 8, 3, 1, CAST(N'2026-03-30T08:23:27.3774753' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774754' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (123, N'D', 1, 3, 1, CAST(N'2026-03-30T08:23:27.3774755' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774755' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (124, N'D', 2, 3, 1, CAST(N'2026-03-30T08:23:27.3774756' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774756' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (125, N'D', 3, 3, 1, CAST(N'2026-03-30T08:23:27.3774757' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774757' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (126, N'D', 4, 3, 1, CAST(N'2026-03-30T08:23:27.3774758' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774758' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (127, N'D', 5, 3, 1, CAST(N'2026-03-30T08:23:27.3774759' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774759' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (128, N'D', 6, 3, 1, CAST(N'2026-03-30T08:23:27.3774760' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774760' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (129, N'D', 7, 3, 1, CAST(N'2026-03-30T08:23:27.3774761' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774761' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (130, N'D', 8, 3, 1, CAST(N'2026-03-30T08:23:27.3774796' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774796' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (131, N'E', 1, 3, 1, CAST(N'2026-03-30T08:23:27.3774797' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774798' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (132, N'E', 2, 3, 1, CAST(N'2026-03-30T08:23:27.3774798' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774799' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (133, N'E', 3, 3, 1, CAST(N'2026-03-30T08:23:27.3774799' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774800' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (134, N'E', 4, 3, 1, CAST(N'2026-03-30T08:23:27.3774800' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774801' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (135, N'E', 5, 3, 1, CAST(N'2026-03-30T08:23:27.3774801' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774802' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (136, N'E', 6, 3, 1, CAST(N'2026-03-30T08:23:27.3774802' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774803' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (137, N'E', 7, 3, 1, CAST(N'2026-03-30T08:23:27.3774803' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774804' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (138, N'E', 8, 3, 1, CAST(N'2026-03-30T08:23:27.3774804' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774805' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (139, N'F', 1, 3, 1, CAST(N'2026-03-30T08:23:27.3774805' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774806' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (140, N'F', 2, 3, 1, CAST(N'2026-03-30T08:23:27.3774806' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774807' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (141, N'F', 3, 3, 1, CAST(N'2026-03-30T08:23:27.3774807' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774808' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (142, N'F', 4, 3, 1, CAST(N'2026-03-30T08:23:27.3774808' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774809' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (143, N'F', 5, 3, 1, CAST(N'2026-03-30T08:23:27.3774809' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774810' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (144, N'F', 6, 3, 1, CAST(N'2026-03-30T08:23:27.3774810' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774811' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (145, N'F', 7, 3, 1, CAST(N'2026-03-30T08:23:27.3774811' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774812' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (146, N'F', 8, 3, 1, CAST(N'2026-03-30T08:23:27.3774812' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774813' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (147, N'A', 1, 4, 1, CAST(N'2026-03-30T08:23:27.3774814' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774814' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (148, N'A', 2, 4, 1, CAST(N'2026-03-30T08:23:27.3774815' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774815' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (149, N'A', 3, 4, 1, CAST(N'2026-03-30T08:23:27.3774816' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774816' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (150, N'A', 4, 4, 1, CAST(N'2026-03-30T08:23:27.3774817' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774817' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (151, N'A', 5, 4, 1, CAST(N'2026-03-30T08:23:27.3774818' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774818' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (152, N'A', 6, 4, 1, CAST(N'2026-03-30T08:23:27.3774819' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774819' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (153, N'A', 7, 4, 1, CAST(N'2026-03-30T08:23:27.3774820' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774820' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (154, N'A', 8, 4, 1, CAST(N'2026-03-30T08:23:27.3774821' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774821' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (155, N'A', 9, 4, 1, CAST(N'2026-03-30T08:23:27.3774822' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774822' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (156, N'A', 10, 4, 1, CAST(N'2026-03-30T08:23:27.3774823' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774823' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (157, N'B', 1, 4, 1, CAST(N'2026-03-30T08:23:27.3774824' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774825' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (158, N'B', 2, 4, 1, CAST(N'2026-03-30T08:23:27.3774825' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774826' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (159, N'B', 3, 4, 1, CAST(N'2026-03-30T08:23:27.3774826' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774827' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (160, N'B', 4, 4, 1, CAST(N'2026-03-30T08:23:27.3774827' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774828' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (161, N'B', 5, 4, 1, CAST(N'2026-03-30T08:23:27.3774828' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774829' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (162, N'B', 6, 4, 1, CAST(N'2026-03-30T08:23:27.3774829' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774830' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (163, N'B', 7, 4, 1, CAST(N'2026-03-30T08:23:27.3774830' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774831' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (164, N'B', 8, 4, 1, CAST(N'2026-03-30T08:23:27.3774831' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774832' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (165, N'B', 9, 4, 1, CAST(N'2026-03-30T08:23:27.3774832' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774833' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (166, N'B', 10, 4, 1, CAST(N'2026-03-30T08:23:27.3774833' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774834' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (167, N'C', 1, 4, 1, CAST(N'2026-03-30T08:23:27.3774835' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774835' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (168, N'C', 2, 4, 1, CAST(N'2026-03-30T08:23:27.3774836' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774836' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (169, N'C', 3, 4, 1, CAST(N'2026-03-30T08:23:27.3774837' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774837' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (170, N'C', 4, 4, 1, CAST(N'2026-03-30T08:23:27.3774838' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774838' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (171, N'C', 5, 4, 1, CAST(N'2026-03-30T08:23:27.3774839' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774839' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (172, N'C', 6, 4, 1, CAST(N'2026-03-30T08:23:27.3774840' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774840' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (173, N'C', 7, 4, 1, CAST(N'2026-03-30T08:23:27.3774841' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774841' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (174, N'C', 8, 4, 1, CAST(N'2026-03-30T08:23:27.3774841' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774842' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (175, N'C', 9, 4, 1, CAST(N'2026-03-30T08:23:27.3774842' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774843' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (176, N'C', 10, 4, 1, CAST(N'2026-03-30T08:23:27.3774843' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774844' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (177, N'D', 1, 4, 1, CAST(N'2026-03-30T08:23:27.3774845' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774845' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (178, N'D', 2, 4, 1, CAST(N'2026-03-30T08:23:27.3774846' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774846' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (179, N'D', 3, 4, 1, CAST(N'2026-03-30T08:23:27.3774847' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774847' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (180, N'D', 4, 4, 1, CAST(N'2026-03-30T08:23:27.3774848' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774848' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (181, N'D', 5, 4, 1, CAST(N'2026-03-30T08:23:27.3774849' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774849' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (182, N'D', 6, 4, 1, CAST(N'2026-03-30T08:23:27.3774850' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774850' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (183, N'D', 7, 4, 1, CAST(N'2026-03-30T08:23:27.3774851' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774851' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (184, N'D', 8, 4, 1, CAST(N'2026-03-30T08:23:27.3774852' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774852' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (185, N'D', 9, 4, 1, CAST(N'2026-03-30T08:23:27.3774853' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774853' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (186, N'D', 10, 4, 1, CAST(N'2026-03-30T08:23:27.3774854' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774854' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (187, N'E', 1, 4, 1, CAST(N'2026-03-30T08:23:27.3774855' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774855' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (188, N'E', 2, 4, 1, CAST(N'2026-03-30T08:23:27.3774856' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774856' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (189, N'E', 3, 4, 1, CAST(N'2026-03-30T08:23:27.3774857' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774857' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (190, N'E', 4, 4, 1, CAST(N'2026-03-30T08:23:27.3774858' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774858' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (191, N'E', 5, 4, 1, CAST(N'2026-03-30T08:23:27.3774859' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774859' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (192, N'E', 6, 4, 1, CAST(N'2026-03-30T08:23:27.3774860' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774860' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (193, N'E', 7, 4, 1, CAST(N'2026-03-30T08:23:27.3774861' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774861' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (194, N'E', 8, 4, 1, CAST(N'2026-03-30T08:23:27.3774862' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774862' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (195, N'E', 9, 4, 1, CAST(N'2026-03-30T08:23:27.3774863' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774863' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (196, N'E', 10, 4, 1, CAST(N'2026-03-30T08:23:27.3774864' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774864' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (197, N'A', 1, 5, 1, CAST(N'2026-03-30T08:23:27.3774865' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774866' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (198, N'A', 2, 5, 1, CAST(N'2026-03-30T08:23:27.3774866' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774867' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (199, N'A', 3, 5, 1, CAST(N'2026-03-30T08:23:27.3774867' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774868' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (200, N'A', 4, 5, 1, CAST(N'2026-03-30T08:23:27.3774868' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774869' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (201, N'A', 5, 5, 1, CAST(N'2026-03-30T08:23:27.3774869' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774870' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (202, N'A', 6, 5, 1, CAST(N'2026-03-30T08:23:27.3774870' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774871' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (203, N'A', 7, 5, 1, CAST(N'2026-03-30T08:23:27.3774871' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774872' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (204, N'A', 8, 5, 1, CAST(N'2026-03-30T08:23:27.3774872' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774872' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (205, N'B', 1, 5, 1, CAST(N'2026-03-30T08:23:27.3774873' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774874' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (206, N'B', 2, 5, 1, CAST(N'2026-03-30T08:23:27.3774874' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774875' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (207, N'B', 3, 5, 1, CAST(N'2026-03-30T08:23:27.3774875' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774876' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (208, N'B', 4, 5, 1, CAST(N'2026-03-30T08:23:27.3774876' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774877' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (209, N'B', 5, 5, 1, CAST(N'2026-03-30T08:23:27.3774877' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774878' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (210, N'B', 6, 5, 1, CAST(N'2026-03-30T08:23:27.3774878' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774879' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (211, N'B', 7, 5, 1, CAST(N'2026-03-30T08:23:27.3774879' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774880' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (212, N'B', 8, 5, 1, CAST(N'2026-03-30T08:23:27.3774880' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774881' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (213, N'C', 1, 5, 1, CAST(N'2026-03-30T08:23:27.3774882' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774882' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (214, N'C', 2, 5, 1, CAST(N'2026-03-30T08:23:27.3774883' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774883' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (215, N'C', 3, 5, 1, CAST(N'2026-03-30T08:23:27.3774884' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774884' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (216, N'C', 4, 5, 1, CAST(N'2026-03-30T08:23:27.3774885' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774885' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (217, N'C', 5, 5, 1, CAST(N'2026-03-30T08:23:27.3774886' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774886' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (218, N'C', 6, 5, 1, CAST(N'2026-03-30T08:23:27.3774887' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774887' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (219, N'C', 7, 5, 1, CAST(N'2026-03-30T08:23:27.3774888' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774888' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (220, N'C', 8, 5, 1, CAST(N'2026-03-30T08:23:27.3774889' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774889' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (221, N'D', 1, 5, 1, CAST(N'2026-03-30T08:23:27.3774890' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774890' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (222, N'D', 2, 5, 1, CAST(N'2026-03-30T08:23:27.3774891' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774891' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (223, N'D', 3, 5, 1, CAST(N'2026-03-30T08:23:27.3774915' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774915' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (224, N'D', 4, 5, 1, CAST(N'2026-03-30T08:23:27.3774916' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774916' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (225, N'D', 5, 5, 1, CAST(N'2026-03-30T08:23:27.3774917' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774917' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (226, N'D', 6, 5, 1, CAST(N'2026-03-30T08:23:27.3774918' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774918' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (227, N'D', 7, 5, 1, CAST(N'2026-03-30T08:23:27.3774919' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774919' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (228, N'D', 8, 5, 1, CAST(N'2026-03-30T08:23:27.3774920' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774920' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (229, N'E', 1, 5, 1, CAST(N'2026-03-30T08:23:27.3774921' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774921' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (230, N'E', 2, 5, 1, CAST(N'2026-03-30T08:23:27.3774922' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774922' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (231, N'E', 3, 5, 1, CAST(N'2026-03-30T08:23:27.3774923' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774923' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (232, N'E', 4, 5, 1, CAST(N'2026-03-30T08:23:27.3774924' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774924' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (233, N'E', 5, 5, 1, CAST(N'2026-03-30T08:23:27.3774925' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774925' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (234, N'E', 6, 5, 1, CAST(N'2026-03-30T08:23:27.3774926' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774926' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (235, N'E', 7, 5, 1, CAST(N'2026-03-30T08:23:27.3774927' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774927' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (236, N'E', 8, 5, 1, CAST(N'2026-03-30T08:23:27.3774928' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774928' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (237, N'F', 1, 5, 1, CAST(N'2026-03-30T08:23:27.3774929' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774929' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (238, N'F', 2, 5, 1, CAST(N'2026-03-30T08:23:27.3774930' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774930' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (239, N'F', 3, 5, 1, CAST(N'2026-03-30T08:23:27.3774931' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774931' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (240, N'F', 4, 5, 1, CAST(N'2026-03-30T08:23:27.3774932' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774932' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (241, N'F', 5, 5, 1, CAST(N'2026-03-30T08:23:27.3774933' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774933' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (242, N'F', 6, 5, 1, CAST(N'2026-03-30T08:23:27.3774934' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774934' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (243, N'F', 7, 5, 1, CAST(N'2026-03-30T08:23:27.3774935' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774935' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (244, N'F', 8, 5, 1, CAST(N'2026-03-30T08:23:27.3774936' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774936' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (245, N'A', 1, 6, 1, CAST(N'2026-03-30T08:23:27.3774938' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774938' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (246, N'A', 2, 6, 1, CAST(N'2026-03-30T08:23:27.3774939' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774939' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (247, N'A', 3, 6, 1, CAST(N'2026-03-30T08:23:27.3774940' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774940' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (248, N'A', 4, 6, 1, CAST(N'2026-03-30T08:23:27.3774941' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774941' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (249, N'A', 5, 6, 1, CAST(N'2026-03-30T08:23:27.3774942' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774942' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (250, N'A', 6, 6, 1, CAST(N'2026-03-30T08:23:27.3774942' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774943' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (251, N'A', 7, 6, 1, CAST(N'2026-03-30T08:23:27.3774944' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774944' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (252, N'A', 8, 6, 1, CAST(N'2026-03-30T08:23:27.3774945' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774945' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (253, N'A', 9, 6, 1, CAST(N'2026-03-30T08:23:27.3774946' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774946' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (254, N'A', 10, 6, 1, CAST(N'2026-03-30T08:23:27.3774947' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774947' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (255, N'B', 1, 6, 1, CAST(N'2026-03-30T08:23:27.3774948' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774948' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (256, N'B', 2, 6, 1, CAST(N'2026-03-30T08:23:27.3774949' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774949' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (257, N'B', 3, 6, 1, CAST(N'2026-03-30T08:23:27.3774950' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774950' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (258, N'B', 4, 6, 1, CAST(N'2026-03-30T08:23:27.3774952' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774952' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (259, N'B', 5, 6, 1, CAST(N'2026-03-30T08:23:27.3774953' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774953' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (260, N'B', 6, 6, 1, CAST(N'2026-03-30T08:23:27.3774954' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774954' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (261, N'B', 7, 6, 1, CAST(N'2026-03-30T08:23:27.3774955' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774955' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (262, N'B', 8, 6, 1, CAST(N'2026-03-30T08:23:27.3774956' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774956' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (263, N'B', 9, 6, 1, CAST(N'2026-03-30T08:23:27.3774957' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774957' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (264, N'B', 10, 6, 1, CAST(N'2026-03-30T08:23:27.3774958' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774958' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (265, N'C', 1, 6, 1, CAST(N'2026-03-30T08:23:27.3774959' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774960' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (266, N'C', 2, 6, 1, CAST(N'2026-03-30T08:23:27.3774960' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774961' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (267, N'C', 3, 6, 1, CAST(N'2026-03-30T08:23:27.3774961' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774962' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (268, N'C', 4, 6, 1, CAST(N'2026-03-30T08:23:27.3774962' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774963' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (269, N'C', 5, 6, 1, CAST(N'2026-03-30T08:23:27.3774963' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774964' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (270, N'C', 6, 6, 1, CAST(N'2026-03-30T08:23:27.3774964' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774965' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (271, N'C', 7, 6, 1, CAST(N'2026-03-30T08:23:27.3774965' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774965' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (272, N'C', 8, 6, 1, CAST(N'2026-03-30T08:23:27.3774966' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774966' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (273, N'C', 9, 6, 1, CAST(N'2026-03-30T08:23:27.3774967' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774968' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (274, N'C', 10, 6, 1, CAST(N'2026-03-30T08:23:27.3774968' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774969' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (275, N'D', 1, 6, 1, CAST(N'2026-03-30T08:23:27.3774969' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774970' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (276, N'D', 2, 6, 1, CAST(N'2026-03-30T08:23:27.3774970' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774971' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (277, N'D', 3, 6, 1, CAST(N'2026-03-30T08:23:27.3774971' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774972' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (278, N'D', 4, 6, 1, CAST(N'2026-03-30T08:23:27.3774995' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774995' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (279, N'D', 5, 6, 1, CAST(N'2026-03-30T08:23:27.3774996' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774996' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (280, N'D', 6, 6, 1, CAST(N'2026-03-30T08:23:27.3774997' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774997' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (281, N'D', 7, 6, 1, CAST(N'2026-03-30T08:23:27.3774998' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774998' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (282, N'D', 8, 6, 1, CAST(N'2026-03-30T08:23:27.3774999' AS DateTime2), CAST(N'2026-03-30T08:23:27.3774999' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (283, N'D', 9, 6, 1, CAST(N'2026-03-30T08:23:27.3775000' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775000' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (284, N'D', 10, 6, 1, CAST(N'2026-03-30T08:23:27.3775001' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775001' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (285, N'E', 1, 6, 1, CAST(N'2026-03-30T08:23:27.3775002' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775002' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (286, N'E', 2, 6, 1, CAST(N'2026-03-30T08:23:27.3775003' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775003' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (287, N'E', 3, 6, 1, CAST(N'2026-03-30T08:23:27.3775004' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775004' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (288, N'E', 4, 6, 1, CAST(N'2026-03-30T08:23:27.3775005' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775006' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (289, N'E', 5, 6, 1, CAST(N'2026-03-30T08:23:27.3775006' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775007' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (290, N'E', 6, 6, 1, CAST(N'2026-03-30T08:23:27.3775007' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775008' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (291, N'E', 7, 6, 1, CAST(N'2026-03-30T08:23:27.3775008' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775009' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (292, N'E', 8, 6, 1, CAST(N'2026-03-30T08:23:27.3775009' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775010' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (293, N'E', 9, 6, 1, CAST(N'2026-03-30T08:23:27.3775010' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775011' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (294, N'E', 10, 6, 1, CAST(N'2026-03-30T08:23:27.3775011' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775012' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (295, N'A', 1, 7, 1, CAST(N'2026-03-30T08:23:27.3775013' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775013' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (296, N'A', 2, 7, 1, CAST(N'2026-03-30T08:23:27.3775014' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775014' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (297, N'A', 3, 7, 1, CAST(N'2026-03-30T08:23:27.3775015' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775015' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (298, N'A', 4, 7, 1, CAST(N'2026-03-30T08:23:27.3775016' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775016' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (299, N'A', 5, 7, 1, CAST(N'2026-03-30T08:23:27.3775017' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775017' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (300, N'A', 6, 7, 1, CAST(N'2026-03-30T08:23:27.3775018' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775018' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (301, N'A', 7, 7, 1, CAST(N'2026-03-30T08:23:27.3775019' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775019' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (302, N'A', 8, 7, 1, CAST(N'2026-03-30T08:23:27.3775020' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775020' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (303, N'B', 1, 7, 1, CAST(N'2026-03-30T08:23:27.3775021' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775021' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (304, N'B', 2, 7, 1, CAST(N'2026-03-30T08:23:27.3775022' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775022' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (305, N'B', 3, 7, 1, CAST(N'2026-03-30T08:23:27.3775023' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775023' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (306, N'B', 4, 7, 1, CAST(N'2026-03-30T08:23:27.3775024' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775024' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (307, N'B', 5, 7, 1, CAST(N'2026-03-30T08:23:27.3775025' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775025' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (308, N'B', 6, 7, 1, CAST(N'2026-03-30T08:23:27.3775026' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775026' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (309, N'B', 7, 7, 1, CAST(N'2026-03-30T08:23:27.3775027' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775027' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (310, N'B', 8, 7, 1, CAST(N'2026-03-30T08:23:27.3775028' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775028' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (311, N'C', 1, 7, 1, CAST(N'2026-03-30T08:23:27.3775029' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775029' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (312, N'C', 2, 7, 1, CAST(N'2026-03-30T08:23:27.3775030' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775030' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (313, N'C', 3, 7, 1, CAST(N'2026-03-30T08:23:27.3775031' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775031' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (314, N'C', 4, 7, 1, CAST(N'2026-03-30T08:23:27.3775032' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775032' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (315, N'C', 5, 7, 1, CAST(N'2026-03-30T08:23:27.3775033' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775033' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (316, N'C', 6, 7, 1, CAST(N'2026-03-30T08:23:27.3775034' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775034' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (317, N'C', 7, 7, 1, CAST(N'2026-03-30T08:23:27.3775035' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775035' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (318, N'C', 8, 7, 1, CAST(N'2026-03-30T08:23:27.3775036' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775036' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (319, N'D', 1, 7, 1, CAST(N'2026-03-30T08:23:27.3775037' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775038' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (320, N'D', 2, 7, 1, CAST(N'2026-03-30T08:23:27.3775038' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775039' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (321, N'D', 3, 7, 1, CAST(N'2026-03-30T08:23:27.3775039' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775040' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (322, N'D', 4, 7, 1, CAST(N'2026-03-30T08:23:27.3775040' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775041' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (323, N'D', 5, 7, 1, CAST(N'2026-03-30T08:23:27.3775041' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775042' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (324, N'D', 6, 7, 1, CAST(N'2026-03-30T08:23:27.3775042' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775043' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (325, N'D', 7, 7, 1, CAST(N'2026-03-30T08:23:27.3775043' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775044' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (326, N'D', 8, 7, 1, CAST(N'2026-03-30T08:23:27.3775044' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775045' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (327, N'E', 1, 7, 1, CAST(N'2026-03-30T08:23:27.3775045' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775046' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (328, N'E', 2, 7, 1, CAST(N'2026-03-30T08:23:27.3775046' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775047' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (329, N'E', 3, 7, 1, CAST(N'2026-03-30T08:23:27.3775047' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775048' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (330, N'E', 4, 7, 1, CAST(N'2026-03-30T08:23:27.3775048' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775049' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (331, N'E', 5, 7, 1, CAST(N'2026-03-30T08:23:27.3775049' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775050' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (332, N'E', 6, 7, 1, CAST(N'2026-03-30T08:23:27.3775050' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775051' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (333, N'E', 7, 7, 1, CAST(N'2026-03-30T08:23:27.3775051' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775052' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (334, N'E', 8, 7, 1, CAST(N'2026-03-30T08:23:27.3775052' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775053' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (335, N'F', 1, 7, 1, CAST(N'2026-03-30T08:23:27.3775053' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775054' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (336, N'F', 2, 7, 1, CAST(N'2026-03-30T08:23:27.3775054' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775055' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (337, N'F', 3, 7, 1, CAST(N'2026-03-30T08:23:27.3775055' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775056' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (338, N'F', 4, 7, 1, CAST(N'2026-03-30T08:23:27.3775056' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775057' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (339, N'F', 5, 7, 1, CAST(N'2026-03-30T08:23:27.3775057' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775058' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (340, N'F', 6, 7, 1, CAST(N'2026-03-30T08:23:27.3775058' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775059' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (341, N'F', 7, 7, 1, CAST(N'2026-03-30T08:23:27.3775059' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775060' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (342, N'F', 8, 7, 1, CAST(N'2026-03-30T08:23:27.3775060' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775061' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (343, N'A', 1, 8, 1, CAST(N'2026-03-30T08:23:27.3775062' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775062' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (344, N'A', 2, 8, 1, CAST(N'2026-03-30T08:23:27.3775063' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775063' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (345, N'A', 3, 8, 1, CAST(N'2026-03-30T08:23:27.3775064' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775064' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (346, N'A', 4, 8, 1, CAST(N'2026-03-30T08:23:27.3775065' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775065' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (347, N'A', 5, 8, 1, CAST(N'2026-03-30T08:23:27.3775066' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775066' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (348, N'A', 6, 8, 1, CAST(N'2026-03-30T08:23:27.3775067' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775067' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (349, N'A', 7, 8, 1, CAST(N'2026-03-30T08:23:27.3775068' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775068' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (350, N'A', 8, 8, 1, CAST(N'2026-03-30T08:23:27.3775069' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775069' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (351, N'A', 9, 8, 1, CAST(N'2026-03-30T08:23:27.3775070' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775070' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (352, N'A', 10, 8, 1, CAST(N'2026-03-30T08:23:27.3775071' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775071' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (353, N'B', 1, 8, 1, CAST(N'2026-03-30T08:23:27.3775072' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775073' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (354, N'B', 2, 8, 1, CAST(N'2026-03-30T08:23:27.3775073' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775074' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (355, N'B', 3, 8, 1, CAST(N'2026-03-30T08:23:27.3775074' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775075' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (356, N'B', 4, 8, 1, CAST(N'2026-03-30T08:23:27.3775075' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775076' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (357, N'B', 5, 8, 1, CAST(N'2026-03-30T08:23:27.3775076' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775077' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (358, N'B', 6, 8, 1, CAST(N'2026-03-30T08:23:27.3775077' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775078' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (359, N'B', 7, 8, 1, CAST(N'2026-03-30T08:23:27.3775078' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775079' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (360, N'B', 8, 8, 1, CAST(N'2026-03-30T08:23:27.3775079' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775080' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (361, N'B', 9, 8, 1, CAST(N'2026-03-30T08:23:27.3775080' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775081' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (362, N'B', 10, 8, 1, CAST(N'2026-03-30T08:23:27.3775081' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775082' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (363, N'C', 1, 8, 1, CAST(N'2026-03-30T08:23:27.3775083' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775083' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (364, N'C', 2, 8, 1, CAST(N'2026-03-30T08:23:27.3775084' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775084' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (365, N'C', 3, 8, 1, CAST(N'2026-03-30T08:23:27.3775085' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775085' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (366, N'C', 4, 8, 1, CAST(N'2026-03-30T08:23:27.3775086' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775086' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (367, N'C', 5, 8, 1, CAST(N'2026-03-30T08:23:27.3775087' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775087' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (368, N'C', 6, 8, 1, CAST(N'2026-03-30T08:23:27.3775088' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775088' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (369, N'C', 7, 8, 1, CAST(N'2026-03-30T08:23:27.3775089' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775089' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (370, N'C', 8, 8, 1, CAST(N'2026-03-30T08:23:27.3775090' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775090' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (371, N'C', 9, 8, 1, CAST(N'2026-03-30T08:23:27.3775091' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775091' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (372, N'C', 10, 8, 1, CAST(N'2026-03-30T08:23:27.3775092' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775092' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (373, N'D', 1, 8, 1, CAST(N'2026-03-30T08:23:27.3775093' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775093' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (374, N'D', 2, 8, 1, CAST(N'2026-03-30T08:23:27.3775094' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775094' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (375, N'D', 3, 8, 1, CAST(N'2026-03-30T08:23:27.3775095' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775095' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (376, N'D', 4, 8, 1, CAST(N'2026-03-30T08:23:27.3775096' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775096' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (377, N'D', 5, 8, 1, CAST(N'2026-03-30T08:23:27.3775097' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775097' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (378, N'D', 6, 8, 1, CAST(N'2026-03-30T08:23:27.3775098' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775098' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (379, N'D', 7, 8, 1, CAST(N'2026-03-30T08:23:27.3775099' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775099' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (380, N'D', 8, 8, 1, CAST(N'2026-03-30T08:23:27.3775100' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775100' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (381, N'D', 9, 8, 1, CAST(N'2026-03-30T08:23:27.3775101' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775101' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (382, N'D', 10, 8, 1, CAST(N'2026-03-30T08:23:27.3775102' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775102' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (383, N'E', 1, 8, 1, CAST(N'2026-03-30T08:23:27.3775103' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775103' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (384, N'E', 2, 8, 1, CAST(N'2026-03-30T08:23:27.3775104' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775104' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (385, N'E', 3, 8, 1, CAST(N'2026-03-30T08:23:27.3775105' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775105' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (386, N'E', 4, 8, 1, CAST(N'2026-03-30T08:23:27.3775106' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775106' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (387, N'E', 5, 8, 1, CAST(N'2026-03-30T08:23:27.3775107' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775107' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (388, N'E', 6, 8, 1, CAST(N'2026-03-30T08:23:27.3775130' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775131' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (389, N'E', 7, 8, 1, CAST(N'2026-03-30T08:23:27.3775131' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775132' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (390, N'E', 8, 8, 1, CAST(N'2026-03-30T08:23:27.3775132' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775133' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (391, N'E', 9, 8, 1, CAST(N'2026-03-30T08:23:27.3775133' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775134' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (392, N'E', 10, 8, 1, CAST(N'2026-03-30T08:23:27.3775134' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775135' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (393, N'A', 1, 9, 1, CAST(N'2026-03-30T08:23:27.3775137' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775138' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (394, N'A', 2, 9, 1, CAST(N'2026-03-30T08:23:27.3775138' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775138' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (395, N'A', 3, 9, 1, CAST(N'2026-03-30T08:23:27.3775139' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775139' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (396, N'A', 4, 9, 1, CAST(N'2026-03-30T08:23:27.3775140' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775140' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (397, N'A', 5, 9, 1, CAST(N'2026-03-30T08:23:27.3775141' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775141' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (398, N'A', 6, 9, 1, CAST(N'2026-03-30T08:23:27.3775142' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775142' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (399, N'A', 7, 9, 1, CAST(N'2026-03-30T08:23:27.3775143' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775143' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (400, N'A', 8, 9, 1, CAST(N'2026-03-30T08:23:27.3775144' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775144' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (401, N'B', 1, 9, 1, CAST(N'2026-03-30T08:23:27.3775145' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775146' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (402, N'B', 2, 9, 1, CAST(N'2026-03-30T08:23:27.3775146' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775147' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (403, N'B', 3, 9, 1, CAST(N'2026-03-30T08:23:27.3775147' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775148' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (404, N'B', 4, 9, 1, CAST(N'2026-03-30T08:23:27.3775148' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775149' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (405, N'B', 5, 9, 1, CAST(N'2026-03-30T08:23:27.3775149' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775150' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (406, N'B', 6, 9, 1, CAST(N'2026-03-30T08:23:27.3775150' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775151' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (407, N'B', 7, 9, 1, CAST(N'2026-03-30T08:23:27.3775151' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775152' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (408, N'B', 8, 9, 1, CAST(N'2026-03-30T08:23:27.3775152' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775152' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (409, N'C', 1, 9, 1, CAST(N'2026-03-30T08:23:27.3775153' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775154' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (410, N'C', 2, 9, 1, CAST(N'2026-03-30T08:23:27.3775154' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775155' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (411, N'C', 3, 9, 1, CAST(N'2026-03-30T08:23:27.3775155' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775156' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (412, N'C', 4, 9, 1, CAST(N'2026-03-30T08:23:27.3775156' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775157' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (413, N'C', 5, 9, 1, CAST(N'2026-03-30T08:23:27.3775157' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775158' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (414, N'C', 6, 9, 1, CAST(N'2026-03-30T08:23:27.3775158' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775159' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (415, N'C', 7, 9, 1, CAST(N'2026-03-30T08:23:27.3775159' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775160' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (416, N'C', 8, 9, 1, CAST(N'2026-03-30T08:23:27.3775160' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775161' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (417, N'D', 1, 9, 1, CAST(N'2026-03-30T08:23:27.3775162' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775162' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (418, N'D', 2, 9, 1, CAST(N'2026-03-30T08:23:27.3775162' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775163' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (419, N'D', 3, 9, 1, CAST(N'2026-03-30T08:23:27.3775163' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775164' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (420, N'D', 4, 9, 1, CAST(N'2026-03-30T08:23:27.3775164' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775165' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (421, N'D', 5, 9, 1, CAST(N'2026-03-30T08:23:27.3775165' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775166' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (422, N'D', 6, 9, 1, CAST(N'2026-03-30T08:23:27.3775166' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775167' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (423, N'D', 7, 9, 1, CAST(N'2026-03-30T08:23:27.3775167' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775168' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (424, N'D', 8, 9, 1, CAST(N'2026-03-30T08:23:27.3775168' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775169' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (425, N'E', 1, 9, 1, CAST(N'2026-03-30T08:23:27.3775170' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775170' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (426, N'E', 2, 9, 1, CAST(N'2026-03-30T08:23:27.3775170' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775171' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (427, N'E', 3, 9, 1, CAST(N'2026-03-30T08:23:27.3775171' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775172' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (428, N'E', 4, 9, 1, CAST(N'2026-03-30T08:23:27.3775172' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775173' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (429, N'E', 5, 9, 1, CAST(N'2026-03-30T08:23:27.3775173' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775174' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (430, N'E', 6, 9, 1, CAST(N'2026-03-30T08:23:27.3775174' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775175' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (431, N'E', 7, 9, 1, CAST(N'2026-03-30T08:23:27.3775175' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775176' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (432, N'E', 8, 9, 1, CAST(N'2026-03-30T08:23:27.3775176' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775177' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (433, N'F', 1, 9, 1, CAST(N'2026-03-30T08:23:27.3775177' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775178' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (434, N'F', 2, 9, 1, CAST(N'2026-03-30T08:23:27.3775178' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775179' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (435, N'F', 3, 9, 1, CAST(N'2026-03-30T08:23:27.3775179' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775180' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (436, N'F', 4, 9, 1, CAST(N'2026-03-30T08:23:27.3775180' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775181' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (437, N'F', 5, 9, 1, CAST(N'2026-03-30T08:23:27.3775181' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775182' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (438, N'F', 6, 9, 1, CAST(N'2026-03-30T08:23:27.3775182' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775183' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (439, N'F', 7, 9, 1, CAST(N'2026-03-30T08:23:27.3775183' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775184' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (440, N'F', 8, 9, 1, CAST(N'2026-03-30T08:23:27.3775184' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775185' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (441, N'A', 1, 10, 1, CAST(N'2026-03-30T08:23:27.3775186' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775186' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (442, N'A', 2, 10, 1, CAST(N'2026-03-30T08:23:27.3775187' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775187' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (443, N'A', 3, 10, 1, CAST(N'2026-03-30T08:23:27.3775188' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775188' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (444, N'A', 4, 10, 1, CAST(N'2026-03-30T08:23:27.3775189' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775189' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (445, N'A', 5, 10, 1, CAST(N'2026-03-30T08:23:27.3775190' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775190' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (446, N'A', 6, 10, 1, CAST(N'2026-03-30T08:23:27.3775191' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775191' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (447, N'A', 7, 10, 1, CAST(N'2026-03-30T08:23:27.3775192' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775192' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (448, N'A', 8, 10, 1, CAST(N'2026-03-30T08:23:27.3775193' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775193' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (449, N'A', 9, 10, 1, CAST(N'2026-03-30T08:23:27.3775194' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775194' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (450, N'A', 10, 10, 1, CAST(N'2026-03-30T08:23:27.3775195' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775195' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (451, N'B', 1, 10, 1, CAST(N'2026-03-30T08:23:27.3775196' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775196' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (452, N'B', 2, 10, 1, CAST(N'2026-03-30T08:23:27.3775197' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775197' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (453, N'B', 3, 10, 1, CAST(N'2026-03-30T08:23:27.3775198' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775198' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (454, N'B', 4, 10, 1, CAST(N'2026-03-30T08:23:27.3775199' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775199' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (455, N'B', 5, 10, 1, CAST(N'2026-03-30T08:23:27.3775200' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775200' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (456, N'B', 6, 10, 1, CAST(N'2026-03-30T08:23:27.3775201' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775201' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (457, N'B', 7, 10, 1, CAST(N'2026-03-30T08:23:27.3775202' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775202' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (458, N'B', 8, 10, 1, CAST(N'2026-03-30T08:23:27.3775203' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775203' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (459, N'B', 9, 10, 1, CAST(N'2026-03-30T08:23:27.3775204' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775204' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (460, N'B', 10, 10, 1, CAST(N'2026-03-30T08:23:27.3775205' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775205' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (461, N'C', 1, 10, 1, CAST(N'2026-03-30T08:23:27.3775206' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775207' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (462, N'C', 2, 10, 1, CAST(N'2026-03-30T08:23:27.3775207' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775208' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (463, N'C', 3, 10, 1, CAST(N'2026-03-30T08:23:27.3775208' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775209' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (464, N'C', 4, 10, 1, CAST(N'2026-03-30T08:23:27.3775209' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775210' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (465, N'C', 5, 10, 1, CAST(N'2026-03-30T08:23:27.3775210' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775211' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (466, N'C', 6, 10, 1, CAST(N'2026-03-30T08:23:27.3775211' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775212' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (467, N'C', 7, 10, 1, CAST(N'2026-03-30T08:23:27.3775212' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775213' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (468, N'C', 8, 10, 1, CAST(N'2026-03-30T08:23:27.3775213' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775214' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (469, N'C', 9, 10, 1, CAST(N'2026-03-30T08:23:27.3775214' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775215' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (470, N'C', 10, 10, 1, CAST(N'2026-03-30T08:23:27.3775215' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775216' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (471, N'D', 1, 10, 1, CAST(N'2026-03-30T08:23:27.3775217' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775217' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (472, N'D', 2, 10, 1, CAST(N'2026-03-30T08:23:27.3775218' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775218' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (473, N'D', 3, 10, 1, CAST(N'2026-03-30T08:23:27.3775219' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775219' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (474, N'D', 4, 10, 1, CAST(N'2026-03-30T08:23:27.3775220' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775220' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (475, N'D', 5, 10, 1, CAST(N'2026-03-30T08:23:27.3775220' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775221' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (476, N'D', 6, 10, 1, CAST(N'2026-03-30T08:23:27.3775221' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775222' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (477, N'D', 7, 10, 1, CAST(N'2026-03-30T08:23:27.3775222' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775223' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (478, N'D', 8, 10, 1, CAST(N'2026-03-30T08:23:27.3775223' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775224' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (479, N'D', 9, 10, 1, CAST(N'2026-03-30T08:23:27.3775224' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775225' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (480, N'D', 10, 10, 1, CAST(N'2026-03-30T08:23:27.3775225' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775226' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (481, N'E', 1, 10, 1, CAST(N'2026-03-30T08:23:27.3775227' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775227' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (482, N'E', 2, 10, 1, CAST(N'2026-03-30T08:23:27.3775228' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775228' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (483, N'E', 3, 10, 1, CAST(N'2026-03-30T08:23:27.3775229' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775229' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (484, N'E', 4, 10, 1, CAST(N'2026-03-30T08:23:27.3775229' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775230' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (485, N'E', 5, 10, 1, CAST(N'2026-03-30T08:23:27.3775230' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775231' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (486, N'E', 6, 10, 1, CAST(N'2026-03-30T08:23:27.3775231' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775232' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (487, N'E', 7, 10, 1, CAST(N'2026-03-30T08:23:27.3775232' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775233' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (488, N'E', 8, 10, 1, CAST(N'2026-03-30T08:23:27.3775233' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775234' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (489, N'E', 9, 10, 1, CAST(N'2026-03-30T08:23:27.3775234' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775235' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (490, N'E', 10, 10, 1, CAST(N'2026-03-30T08:23:27.3775235' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775236' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (491, N'A', 1, 11, 1, CAST(N'2026-03-30T08:23:27.3775237' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775237' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (492, N'A', 2, 11, 1, CAST(N'2026-03-30T08:23:27.3775238' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775238' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (493, N'A', 3, 11, 1, CAST(N'2026-03-30T08:23:27.3775239' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775239' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (494, N'A', 4, 11, 1, CAST(N'2026-03-30T08:23:27.3775240' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775240' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (495, N'A', 5, 11, 1, CAST(N'2026-03-30T08:23:27.3775241' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775241' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (496, N'A', 6, 11, 1, CAST(N'2026-03-30T08:23:27.3775242' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775242' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (497, N'A', 7, 11, 1, CAST(N'2026-03-30T08:23:27.3775243' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775243' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (498, N'A', 8, 11, 1, CAST(N'2026-03-30T08:23:27.3775266' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775266' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (499, N'B', 1, 11, 1, CAST(N'2026-03-30T08:23:27.3775267' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775267' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (500, N'B', 2, 11, 1, CAST(N'2026-03-30T08:23:27.3775268' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775268' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (501, N'B', 3, 11, 1, CAST(N'2026-03-30T08:23:27.3775269' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775269' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (502, N'B', 4, 11, 1, CAST(N'2026-03-30T08:23:27.3775270' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775270' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (503, N'B', 5, 11, 1, CAST(N'2026-03-30T08:23:27.3775271' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775271' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (504, N'B', 6, 11, 1, CAST(N'2026-03-30T08:23:27.3775272' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775272' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (505, N'B', 7, 11, 1, CAST(N'2026-03-30T08:23:27.3775273' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775273' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (506, N'B', 8, 11, 1, CAST(N'2026-03-30T08:23:27.3775274' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775274' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (507, N'C', 1, 11, 1, CAST(N'2026-03-30T08:23:27.3775275' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775275' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (508, N'C', 2, 11, 1, CAST(N'2026-03-30T08:23:27.3775276' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775276' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (509, N'C', 3, 11, 1, CAST(N'2026-03-30T08:23:27.3775277' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775277' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (510, N'C', 4, 11, 1, CAST(N'2026-03-30T08:23:27.3775278' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775278' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (511, N'C', 5, 11, 1, CAST(N'2026-03-30T08:23:27.3775279' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775279' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (512, N'C', 6, 11, 1, CAST(N'2026-03-30T08:23:27.3775280' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775280' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (513, N'C', 7, 11, 1, CAST(N'2026-03-30T08:23:27.3775281' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775281' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (514, N'C', 8, 11, 1, CAST(N'2026-03-30T08:23:27.3775307' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775307' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (515, N'D', 1, 11, 1, CAST(N'2026-03-30T08:23:27.3775308' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775309' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (516, N'D', 2, 11, 1, CAST(N'2026-03-30T08:23:27.3775309' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775310' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (517, N'D', 3, 11, 1, CAST(N'2026-03-30T08:23:27.3775310' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775311' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (518, N'D', 4, 11, 1, CAST(N'2026-03-30T08:23:27.3775311' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775312' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (519, N'D', 5, 11, 1, CAST(N'2026-03-30T08:23:27.3775312' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775313' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (520, N'D', 6, 11, 1, CAST(N'2026-03-30T08:23:27.3775313' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775314' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (521, N'D', 7, 11, 1, CAST(N'2026-03-30T08:23:27.3775314' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775315' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (522, N'D', 8, 11, 1, CAST(N'2026-03-30T08:23:27.3775315' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775316' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (523, N'E', 1, 11, 1, CAST(N'2026-03-30T08:23:27.3775317' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775317' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (524, N'E', 2, 11, 1, CAST(N'2026-03-30T08:23:27.3775318' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775318' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (525, N'E', 3, 11, 1, CAST(N'2026-03-30T08:23:27.3775319' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775319' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (526, N'E', 4, 11, 1, CAST(N'2026-03-30T08:23:27.3775320' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775320' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (527, N'E', 5, 11, 1, CAST(N'2026-03-30T08:23:27.3775321' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775321' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (528, N'E', 6, 11, 1, CAST(N'2026-03-30T08:23:27.3775322' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775322' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (529, N'E', 7, 11, 1, CAST(N'2026-03-30T08:23:27.3775323' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775323' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (530, N'E', 8, 11, 1, CAST(N'2026-03-30T08:23:27.3775324' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775324' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (531, N'F', 1, 11, 1, CAST(N'2026-03-30T08:23:27.3775325' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775325' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (532, N'F', 2, 11, 1, CAST(N'2026-03-30T08:23:27.3775326' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775326' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (533, N'F', 3, 11, 1, CAST(N'2026-03-30T08:23:27.3775327' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775327' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (534, N'F', 4, 11, 1, CAST(N'2026-03-30T08:23:27.3775328' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775328' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (535, N'F', 5, 11, 1, CAST(N'2026-03-30T08:23:27.3775329' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775329' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (536, N'F', 6, 11, 1, CAST(N'2026-03-30T08:23:27.3775330' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775330' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (537, N'F', 7, 11, 1, CAST(N'2026-03-30T08:23:27.3775331' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775331' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (538, N'F', 8, 11, 1, CAST(N'2026-03-30T08:23:27.3775332' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775332' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (539, N'A', 1, 12, 1, CAST(N'2026-03-30T08:23:27.3775333' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775333' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (540, N'A', 2, 12, 1, CAST(N'2026-03-30T08:23:27.3775334' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775334' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (541, N'A', 3, 12, 1, CAST(N'2026-03-30T08:23:27.3775335' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775335' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (542, N'A', 4, 12, 1, CAST(N'2026-03-30T08:23:27.3775336' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775336' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (543, N'A', 5, 12, 1, CAST(N'2026-03-30T08:23:27.3775337' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775337' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (544, N'A', 6, 12, 1, CAST(N'2026-03-30T08:23:27.3775338' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775338' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (545, N'A', 7, 12, 1, CAST(N'2026-03-30T08:23:27.3775339' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775339' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (546, N'A', 8, 12, 1, CAST(N'2026-03-30T08:23:27.3775340' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775340' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (547, N'A', 9, 12, 1, CAST(N'2026-03-30T08:23:27.3775341' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775341' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (548, N'A', 10, 12, 1, CAST(N'2026-03-30T08:23:27.3775342' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775343' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (549, N'B', 1, 12, 1, CAST(N'2026-03-30T08:23:27.3775343' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775344' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (550, N'B', 2, 12, 1, CAST(N'2026-03-30T08:23:27.3775344' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775345' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (551, N'B', 3, 12, 1, CAST(N'2026-03-30T08:23:27.3775345' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775346' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (552, N'B', 4, 12, 1, CAST(N'2026-03-30T08:23:27.3775346' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775347' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (553, N'B', 5, 12, 1, CAST(N'2026-03-30T08:23:27.3775347' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775348' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (554, N'B', 6, 12, 1, CAST(N'2026-03-30T08:23:27.3775348' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775349' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (555, N'B', 7, 12, 1, CAST(N'2026-03-30T08:23:27.3775349' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775350' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (556, N'B', 8, 12, 1, CAST(N'2026-03-30T08:23:27.3775350' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775351' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (557, N'B', 9, 12, 1, CAST(N'2026-03-30T08:23:27.3775351' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775352' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (558, N'B', 10, 12, 1, CAST(N'2026-03-30T08:23:27.3775352' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775353' AS DateTime2), 0, N'Vip')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (559, N'C', 1, 12, 1, CAST(N'2026-03-30T08:23:27.3775354' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775354' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (560, N'C', 2, 12, 1, CAST(N'2026-03-30T08:23:27.3775355' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775355' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (561, N'C', 3, 12, 1, CAST(N'2026-03-30T08:23:27.3775356' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775356' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (562, N'C', 4, 12, 1, CAST(N'2026-03-30T08:23:27.3775357' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775357' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (563, N'C', 5, 12, 1, CAST(N'2026-03-30T08:23:27.3775358' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775358' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (564, N'C', 6, 12, 1, CAST(N'2026-03-30T08:23:27.3775359' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775359' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (565, N'C', 7, 12, 1, CAST(N'2026-03-30T08:23:27.3775360' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775360' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (566, N'C', 8, 12, 1, CAST(N'2026-03-30T08:23:27.3775360' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775361' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (567, N'C', 9, 12, 1, CAST(N'2026-03-30T08:23:27.3775361' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775362' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (568, N'C', 10, 12, 1, CAST(N'2026-03-30T08:23:27.3775362' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775363' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (569, N'D', 1, 12, 1, CAST(N'2026-03-30T08:23:27.3775364' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775364' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (570, N'D', 2, 12, 1, CAST(N'2026-03-30T08:23:27.3775365' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775365' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (571, N'D', 3, 12, 1, CAST(N'2026-03-30T08:23:27.3775366' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775366' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (572, N'D', 4, 12, 1, CAST(N'2026-03-30T08:23:27.3775367' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775367' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (573, N'D', 5, 12, 1, CAST(N'2026-03-30T08:23:27.3775368' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775368' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (574, N'D', 6, 12, 1, CAST(N'2026-03-30T08:23:27.3775369' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775369' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (575, N'D', 7, 12, 1, CAST(N'2026-03-30T08:23:27.3775370' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775370' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (576, N'D', 8, 12, 1, CAST(N'2026-03-30T08:23:27.3775371' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775371' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (577, N'D', 9, 12, 1, CAST(N'2026-03-30T08:23:27.3775372' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775372' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (578, N'D', 10, 12, 1, CAST(N'2026-03-30T08:23:27.3775373' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775373' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (579, N'E', 1, 12, 1, CAST(N'2026-03-30T08:23:27.3775374' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775374' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (580, N'E', 2, 12, 1, CAST(N'2026-03-30T08:23:27.3775375' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775375' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (581, N'E', 3, 12, 1, CAST(N'2026-03-30T08:23:27.3775376' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775376' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (582, N'E', 4, 12, 1, CAST(N'2026-03-30T08:23:27.3775377' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775377' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (583, N'E', 5, 12, 1, CAST(N'2026-03-30T08:23:27.3775378' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775378' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (584, N'E', 6, 12, 1, CAST(N'2026-03-30T08:23:27.3775379' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775379' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (585, N'E', 7, 12, 1, CAST(N'2026-03-30T08:23:27.3775380' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775380' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (586, N'E', 8, 12, 1, CAST(N'2026-03-30T08:23:27.3775381' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775381' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (587, N'E', 9, 12, 1, CAST(N'2026-03-30T08:23:27.3775382' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775382' AS DateTime2), 0, N'Normal')
GO
INSERT [dbo].[Seats] ([Id], [SeatRow], [SeatNumber], [ScreenId], [IsActive], [CreatedAt], [LastUpdatedAt], [IsRemoved], [SeatType]) VALUES (588, N'E', 10, 12, 1, CAST(N'2026-03-30T08:23:27.3775383' AS DateTime2), CAST(N'2026-03-30T08:23:27.3775383' AS DateTime2), 0, N'Normal')
GO
SET IDENTITY_INSERT [dbo].[Seats] OFF
GO
SET IDENTITY_INSERT [dbo].[ShowTimes] ON 
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (337, 1, 1, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4031252' AS DateTime2), CAST(N'2026-03-30T08:53:01.4031275' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (338, 1, 1, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032768' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032770' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (339, 1, 1, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032773' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032773' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (340, 1, 1, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032774' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032775' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (341, 1, 1, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032776' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032777' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (342, 1, 1, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032784' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032784' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (343, 1, 1, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032785' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032786' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (344, 1, 1, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032786' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032787' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (345, 1, 1, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032788' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032788' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (346, 1, 1, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032789' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032790' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (347, 1, 1, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032791' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032791' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (348, 1, 1, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032792' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032792' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (349, 1, 1, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032793' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032793' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (350, 1, 1, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032794' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032795' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (351, 1, 1, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032795' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032796' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (352, 1, 1, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032797' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032797' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (353, 1, 1, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032798' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032798' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (354, 1, 1, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032799' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032800' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (355, 1, 1, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032800' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032801' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (356, 1, 1, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032802' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032802' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (357, 1, 1, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032803' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032803' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (358, 1, 1, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032804' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032804' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (359, 1, 1, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032805' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032805' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (360, 1, 1, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032806' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032806' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (361, 1, 1, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032807' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032808' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (362, 1, 1, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032808' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032809' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (363, 1, 1, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032810' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032810' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (364, 1, 1, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4032811' AS DateTime2), CAST(N'2026-03-30T08:53:01.4032811' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (365, 2, 2, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040754' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040758' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (366, 2, 2, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040764' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040764' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (367, 2, 2, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040765' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040766' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (368, 2, 2, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040766' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040767' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (369, 2, 2, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040768' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040768' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (370, 2, 2, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040774' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040775' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (371, 2, 2, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040776' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040776' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (372, 2, 2, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040777' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040777' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (373, 2, 2, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040778' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040779' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (374, 2, 2, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040780' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040780' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (375, 2, 2, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040781' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040781' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (376, 2, 2, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040782' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040782' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (377, 2, 2, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040827' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040827' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (378, 2, 2, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040828' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040829' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (379, 2, 2, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040829' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040830' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (380, 2, 2, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040831' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040831' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (381, 2, 2, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040832' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040832' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (382, 2, 2, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040833' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040833' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (383, 2, 2, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040834' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040835' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (384, 2, 2, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040836' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040836' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (385, 2, 2, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040837' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040837' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (386, 2, 2, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040838' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040838' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (387, 2, 2, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040839' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040839' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (388, 2, 2, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040840' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040840' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (389, 2, 2, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040841' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040842' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (390, 2, 2, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040842' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040843' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (391, 2, 2, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040843' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040844' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (392, 2, 2, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4040844' AS DateTime2), CAST(N'2026-03-30T08:53:01.4040845' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (393, 11, 3, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044296' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044300' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (394, 11, 3, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044304' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044305' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (395, 11, 3, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044306' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044306' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (396, 11, 3, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044307' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044307' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (397, 11, 3, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044308' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044309' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (398, 11, 3, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044309' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044310' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (399, 11, 3, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044310' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044311' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (400, 11, 3, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044312' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044312' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (401, 11, 3, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044313' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044313' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (402, 11, 3, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044320' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044320' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (403, 11, 3, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044321' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044321' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (404, 11, 3, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044322' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044323' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (405, 11, 3, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044323' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044324' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (406, 11, 3, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044325' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044325' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (407, 11, 3, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044326' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044326' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (408, 11, 3, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044327' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044327' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (409, 11, 3, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044328' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044328' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (410, 11, 3, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044329' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044329' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (411, 11, 3, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044330' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044331' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (412, 11, 3, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044331' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044332' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (413, 11, 3, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044332' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044333' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (414, 11, 3, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044333' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044334' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (415, 11, 3, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044335' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044335' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (416, 11, 3, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044336' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044336' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (417, 11, 3, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044337' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044337' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (418, 11, 3, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044338' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044339' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (419, 11, 3, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044339' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044340' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (420, 11, 3, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4044340' AS DateTime2), CAST(N'2026-03-30T08:53:01.4044341' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (421, 12, 4, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047612' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047615' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (422, 12, 4, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047620' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047620' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (423, 12, 4, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047621' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047622' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (424, 12, 4, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047622' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047623' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (425, 12, 4, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047624' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047624' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (426, 12, 4, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047625' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047625' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (427, 12, 4, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047626' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047626' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (428, 12, 4, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047627' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047628' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (429, 12, 4, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047628' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047629' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (430, 12, 4, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047630' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047630' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (431, 12, 4, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047631' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047631' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (432, 12, 4, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047632' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047632' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (433, 12, 4, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047633' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047634' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (434, 12, 4, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047635' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047635' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (435, 12, 4, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047636' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047636' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (436, 12, 4, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047637' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047637' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (437, 12, 4, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047638' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047639' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (438, 12, 4, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047639' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047640' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (439, 12, 4, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047640' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047641' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (440, 12, 4, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047641' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047642' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (441, 12, 4, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047643' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047643' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (442, 12, 4, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047644' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047644' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (443, 12, 4, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047645' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047645' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (444, 12, 4, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047646' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047646' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (445, 12, 4, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047647' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047647' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (446, 12, 4, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047648' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047649' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (447, 12, 4, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047649' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047650' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (448, 12, 4, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4047650' AS DateTime2), CAST(N'2026-03-30T08:53:01.4047651' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (449, 13, 5, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051353' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051357' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (450, 13, 5, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051364' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051365' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (451, 13, 5, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051367' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051367' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (452, 13, 5, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051369' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051369' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (453, 13, 5, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051371' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051371' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (454, 13, 5, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051373' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051373' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (455, 13, 5, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051375' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051376' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (456, 13, 5, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051377' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051377' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (457, 13, 5, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051379' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051380' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (458, 13, 5, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051381' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051382' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (459, 13, 5, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051384' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051384' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (460, 13, 5, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051529' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051530' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (461, 13, 5, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051534' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051534' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (462, 13, 5, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051536' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051536' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (463, 13, 5, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051537' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051538' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (464, 13, 5, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051539' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051540' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (465, 13, 5, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051541' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051542' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (466, 13, 5, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051551' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051552' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (467, 13, 5, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051553' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051554' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (468, 13, 5, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051555' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051555' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (469, 13, 5, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051557' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051557' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (470, 13, 5, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051559' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051559' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (471, 13, 5, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051560' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051561' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (472, 13, 5, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051562' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051562' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (473, 13, 5, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051564' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051564' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (474, 13, 5, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051565' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051566' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (475, 13, 5, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051567' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051568' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (476, 13, 5, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4051569' AS DateTime2), CAST(N'2026-03-30T08:53:01.4051569' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (477, 14, 6, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055777' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055780' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (478, 14, 6, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055785' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055786' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (479, 14, 6, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055786' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055787' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (480, 14, 6, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055787' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055788' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (481, 14, 6, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055789' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055789' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (482, 14, 6, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055790' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055790' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (483, 14, 6, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055791' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055792' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (484, 14, 6, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055792' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055793' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (485, 14, 6, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055794' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055794' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (486, 14, 6, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055795' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055795' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (487, 14, 6, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055796' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055796' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (488, 14, 6, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055797' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055797' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (489, 14, 6, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055798' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055798' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (490, 14, 6, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055799' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055800' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (491, 14, 6, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055800' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055801' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (492, 14, 6, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055801' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055802' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (493, 14, 6, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055803' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055803' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (494, 14, 6, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055804' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055804' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (495, 14, 6, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055805' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055805' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (496, 14, 6, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055806' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055806' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (497, 14, 6, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055807' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055807' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (498, 14, 6, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055808' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055808' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (499, 14, 6, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055809' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055810' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (500, 14, 6, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055810' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055811' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (501, 14, 6, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055812' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055812' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (502, 14, 6, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055813' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055813' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (503, 14, 6, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055814' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055814' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (504, 14, 6, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4055815' AS DateTime2), CAST(N'2026-03-30T08:53:01.4055815' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (505, 1, 7, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059377' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059380' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (506, 1, 7, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059385' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059385' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (507, 1, 7, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059386' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059387' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (508, 1, 7, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059388' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059388' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (509, 1, 7, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059389' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059389' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (510, 1, 7, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059390' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059391' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (511, 1, 7, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059392' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059392' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (512, 1, 7, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059393' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059393' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (513, 1, 7, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059394' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059394' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (514, 1, 7, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059395' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059395' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (515, 1, 7, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059396' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059396' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (516, 1, 7, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059397' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059397' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (517, 1, 7, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059398' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059399' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (518, 1, 7, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059399' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059400' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (519, 1, 7, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059401' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059401' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (520, 1, 7, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059402' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059402' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (521, 1, 7, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059403' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059403' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (522, 1, 7, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059404' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059404' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (523, 1, 7, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059405' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059405' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (524, 1, 7, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059406' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059407' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (525, 1, 7, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059408' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059408' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (526, 1, 7, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059409' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059409' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (527, 1, 7, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059410' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059410' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (528, 1, 7, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059411' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059411' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (529, 1, 7, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059412' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059412' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (530, 1, 7, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059413' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059413' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (531, 1, 7, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059414' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059415' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (532, 1, 7, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4059415' AS DateTime2), CAST(N'2026-03-30T08:53:01.4059416' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (533, 2, 8, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062655' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062658' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (534, 2, 8, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062663' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062663' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (535, 2, 8, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062664' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062664' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (536, 2, 8, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062665' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062666' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (537, 2, 8, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062666' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062667' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (538, 2, 8, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062668' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062668' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (539, 2, 8, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062669' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062669' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (540, 2, 8, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062670' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062670' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (541, 2, 8, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062671' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062672' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (542, 2, 8, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062672' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062673' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (543, 2, 8, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062674' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062674' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (544, 2, 8, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062675' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062675' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (545, 2, 8, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062715' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062715' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (546, 2, 8, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062716' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062717' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (547, 2, 8, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062717' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062718' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (548, 2, 8, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062718' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062719' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (549, 2, 8, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062720' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062720' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (550, 2, 8, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062721' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062721' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (551, 2, 8, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062722' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062722' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (552, 2, 8, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062723' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062723' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (553, 2, 8, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062724' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062725' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (554, 2, 8, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062725' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062726' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (555, 2, 8, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062727' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062727' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (556, 2, 8, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062728' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062728' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (557, 2, 8, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062729' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062729' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (558, 2, 8, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062730' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062730' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (559, 2, 8, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062731' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062731' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (560, 2, 8, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4062732' AS DateTime2), CAST(N'2026-03-30T08:53:01.4062732' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (561, 11, 9, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066417' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066421' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (562, 11, 9, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066425' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066426' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (563, 11, 9, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066427' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066427' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (564, 11, 9, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066428' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066428' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (565, 11, 9, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066429' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066429' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (566, 11, 9, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066430' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066431' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (567, 11, 9, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066431' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066432' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (568, 11, 9, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066432' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066433' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (569, 11, 9, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066434' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066434' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (570, 11, 9, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066435' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066435' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (571, 11, 9, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066436' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066436' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (572, 11, 9, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066437' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066437' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (573, 11, 9, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066438' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066439' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (574, 11, 9, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066439' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066440' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (575, 11, 9, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066440' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066441' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (576, 11, 9, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066442' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066442' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (577, 11, 9, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066443' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066443' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (578, 11, 9, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066444' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066445' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (579, 11, 9, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066445' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066446' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (580, 11, 9, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066447' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066447' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (581, 11, 9, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066448' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066448' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (582, 11, 9, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066449' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066449' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (583, 11, 9, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066450' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066450' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (584, 11, 9, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066451' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066451' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (585, 11, 9, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066452' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066452' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (586, 11, 9, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066453' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066454' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (587, 11, 9, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066454' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066455' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (588, 11, 9, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4066455' AS DateTime2), CAST(N'2026-03-30T08:53:01.4066456' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (589, 12, 10, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070523' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070527' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (590, 12, 10, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070531' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070532' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (591, 12, 10, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070532' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070533' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (592, 12, 10, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070533' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070534' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (593, 12, 10, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070535' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070535' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (594, 12, 10, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070543' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070543' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (595, 12, 10, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070544' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070545' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (596, 12, 10, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070546' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070546' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (597, 12, 10, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070547' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070547' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (598, 12, 10, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070548' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070548' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (599, 12, 10, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070578' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070579' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (600, 12, 10, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070580' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070581' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (601, 12, 10, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070582' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070582' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (602, 12, 10, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070583' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070583' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (603, 12, 10, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070584' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070584' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (604, 12, 10, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070585' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070585' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (605, 12, 10, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070586' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070586' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (606, 12, 10, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070587' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070588' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (607, 12, 10, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070588' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070589' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (608, 12, 10, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070590' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070590' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (609, 12, 10, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070591' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070591' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (610, 12, 10, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070592' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070592' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (611, 12, 10, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070593' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070593' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (612, 12, 10, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070594' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070594' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (613, 12, 10, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070595' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070596' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (614, 12, 10, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070596' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070597' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (615, 12, 10, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070597' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070598' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (616, 12, 10, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4070598' AS DateTime2), CAST(N'2026-03-30T08:53:01.4070599' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (617, 13, 11, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073863' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073866' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (618, 13, 11, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073871' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073871' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (619, 13, 11, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073872' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073873' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (620, 13, 11, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073873' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073874' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (621, 13, 11, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073875' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073875' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (622, 13, 11, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073876' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073876' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (623, 13, 11, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073877' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073877' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (624, 13, 11, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073878' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073878' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (625, 13, 11, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073879' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073880' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (626, 13, 11, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073880' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073881' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (627, 13, 11, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073881' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073882' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (628, 13, 11, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073882' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073883' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (629, 13, 11, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073884' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073884' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (630, 13, 11, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073885' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073885' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (631, 13, 11, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073886' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073886' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (632, 13, 11, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073887' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073888' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (633, 13, 11, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073889' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073889' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (634, 13, 11, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073890' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073890' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (635, 13, 11, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073891' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073891' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (636, 13, 11, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073892' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073892' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (637, 13, 11, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073893' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073893' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (638, 13, 11, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073894' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073894' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (639, 13, 11, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073895' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073895' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (640, 13, 11, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073896' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073897' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (641, 13, 11, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073897' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073898' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (642, 13, 11, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073899' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073899' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (643, 13, 11, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073900' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073900' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (644, 13, 11, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4073901' AS DateTime2), CAST(N'2026-03-30T08:53:01.4073901' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (645, 14, 12, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077316' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077319' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (646, 14, 12, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077324' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077324' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (647, 14, 12, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077326' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077326' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (648, 14, 12, CAST(N'2026-03-30T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077327' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077327' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (649, 14, 12, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077328' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077328' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (650, 14, 12, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077329' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077329' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (651, 14, 12, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077330' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077330' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (652, 14, 12, CAST(N'2026-03-31T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077331' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077332' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (653, 14, 12, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077332' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077333' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (654, 14, 12, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077333' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077334' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (655, 14, 12, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077335' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077335' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (656, 14, 12, CAST(N'2026-04-01T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077336' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077336' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (657, 14, 12, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077337' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077337' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (658, 14, 12, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077338' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077338' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (659, 14, 12, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077339' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077339' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (660, 14, 12, CAST(N'2026-04-02T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077340' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077341' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (661, 14, 12, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077341' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077342' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (662, 14, 12, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077342' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077343' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (663, 14, 12, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077343' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077344' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (664, 14, 12, CAST(N'2026-04-03T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077345' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077345' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (665, 14, 12, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077346' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077346' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (666, 14, 12, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077347' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077348' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (667, 14, 12, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077348' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077349' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (668, 14, 12, CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077349' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077350' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (669, 14, 12, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077351' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077351' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (670, 14, 12, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'13:00:00' AS Time), CAST(N'15:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077352' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077352' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (671, 14, 12, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'17:00:00' AS Time), CAST(N'19:30:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077353' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077353' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ShowTimes] ([Id], [MovieId], [ScreenId], [Date], [StartTime], [EndTime], [TicketPrice], [IsActive], [CreatedAt], [LastUpdatedAt], [VipTicketPrice]) VALUES (672, 14, 12, CAST(N'2026-04-05T00:00:00.0000000' AS DateTime2), CAST(N'20:30:00' AS Time), CAST(N'23:00:00' AS Time), CAST(85000.00 AS Decimal(18, 2)), 1, CAST(N'2026-03-30T08:53:01.4077354' AS DateTime2), CAST(N'2026-03-30T08:53:01.4077354' AS DateTime2), CAST(120000.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[ShowTimes] OFF
GO
SET IDENTITY_INSERT [dbo].[Theaters] ON 
GO
INSERT [dbo].[Theaters] ([Id], [Name], [Address], [Phone], [Email], [IsActive], [CreatedAt], [LastUpdatedAt], [ProvinceId], [Description]) VALUES (1, N'Kinema Hoàn Kiếm', N'12 Đinh Tiên Hoàng, Hoàn Kiếm', N'0241234567', N'hoankiem@kinema.com', 1, CAST(N'2026-03-30T08:23:27.2946834' AS DateTime2), CAST(N'2026-03-30T08:23:27.2948750' AS DateTime2), 1, N'Rạp trung tâm Hà Nội.')
GO
INSERT [dbo].[Theaters] ([Id], [Name], [Address], [Phone], [Email], [IsActive], [CreatedAt], [LastUpdatedAt], [ProvinceId], [Description]) VALUES (2, N'Kinema Cầu Giấy', N'91 Trần Thái Tông, Cầu Giấy', N'0241234568', N'caugiay@kinema.com', 1, CAST(N'2026-03-30T08:23:27.2951234' AS DateTime2), CAST(N'2026-03-30T08:23:27.2951236' AS DateTime2), 1, N'Rạp khu vực Cầu Giấy.')
GO
INSERT [dbo].[Theaters] ([Id], [Name], [Address], [Phone], [Email], [IsActive], [CreatedAt], [LastUpdatedAt], [ProvinceId], [Description]) VALUES (3, N'Kinema Quận 1', N'45 Lê Lợi, Quận 1', N'0281234567', N'quan1@kinema.com', 1, CAST(N'2026-03-30T08:23:27.2951238' AS DateTime2), CAST(N'2026-03-30T08:23:27.2951239' AS DateTime2), 2, N'Rạp trung tâm TP.HCM.')
GO
INSERT [dbo].[Theaters] ([Id], [Name], [Address], [Phone], [Email], [IsActive], [CreatedAt], [LastUpdatedAt], [ProvinceId], [Description]) VALUES (4, N'Kinema Bình Thạnh', N'200 Điện Biên Phủ, Bình Thạnh', N'0281234568', N'binhthanh@kinema.com', 1, CAST(N'2026-03-30T08:23:27.2951241' AS DateTime2), CAST(N'2026-03-30T08:23:27.2951241' AS DateTime2), 2, N'Rạp Bình Thạnh.')
GO
INSERT [dbo].[Theaters] ([Id], [Name], [Address], [Phone], [Email], [IsActive], [CreatedAt], [LastUpdatedAt], [ProvinceId], [Description]) VALUES (5, N'Kinema Hải Châu', N'78 Hùng Vương, Hải Châu', N'0511234567', N'haichau@kinema.com', 1, CAST(N'2026-03-30T08:23:27.2951242' AS DateTime2), CAST(N'2026-03-30T08:23:27.2951243' AS DateTime2), 3, N'Rạp trung tâm Đà Nẵng.')
GO
INSERT [dbo].[Theaters] ([Id], [Name], [Address], [Phone], [Email], [IsActive], [CreatedAt], [LastUpdatedAt], [ProvinceId], [Description]) VALUES (6, N'Kinema Ninh Kiều', N'36 Hai Bà Trưng, Ninh Kiều', N'0711234567', N'ninhkieu@kinema.com', 1, CAST(N'2026-03-30T08:23:27.2951245' AS DateTime2), CAST(N'2026-03-30T08:23:27.2951246' AS DateTime2), 4, N'Rạp trung tâm Cần Thơ.')
GO
SET IDENTITY_INSERT [dbo].[Theaters] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_ManagedTheaterId]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_ManagedTheaterId] ON [dbo].[AspNetUsers]
(
	[ManagedTheaterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_TheaterId]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_TheaterId] ON [dbo].[AspNetUsers]
(
	[TheaterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BookingDetails_BookingId]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_BookingDetails_BookingId] ON [dbo].[BookingDetails]
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BookingDetails_SeatId]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_BookingDetails_SeatId] ON [dbo].[BookingDetails]
(
	[SeatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Bookings_CheckedInBy]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_Bookings_CheckedInBy] ON [dbo].[Bookings]
(
	[CheckedInBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Bookings_ShowTimeId]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_Bookings_ShowTimeId] ON [dbo].[Bookings]
(
	[ShowTimeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ConcessionOrderDetails_ConcessionId]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_ConcessionOrderDetails_ConcessionId] ON [dbo].[ConcessionOrderDetails]
(
	[ConcessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ConcessionOrderDetails_ConcessionOrderId]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_ConcessionOrderDetails_ConcessionOrderId] ON [dbo].[ConcessionOrderDetails]
(
	[ConcessionOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Payments_BookingId]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_Payments_BookingId] ON [dbo].[Payments]
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Payments_ConcessionOrderId]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_Payments_ConcessionOrderId] ON [dbo].[Payments]
(
	[ConcessionOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Payments_EmployeeId]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_Payments_EmployeeId] ON [dbo].[Payments]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Payments_PromotionId]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_Payments_PromotionId] ON [dbo].[Payments]
(
	[PromotionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Payments_UserId]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_Payments_UserId] ON [dbo].[Payments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Screens_TheaterId]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_Screens_TheaterId] ON [dbo].[Screens]
(
	[TheaterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Seats_ScreenId]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_Seats_ScreenId] ON [dbo].[Seats]
(
	[ScreenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShowTimes_MovieId]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_ShowTimes_MovieId] ON [dbo].[ShowTimes]
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShowTimes_ScreenId]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_ShowTimes_ScreenId] ON [dbo].[ShowTimes]
(
	[ScreenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Theaters_ProvinceId]    Script Date: 3/30/2026 11:22:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_Theaters_ProvinceId] ON [dbo].[Theaters]
(
	[ProvinceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [DisplayName]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((0)) FOR [Point]
GO
ALTER TABLE [dbo].[Concessions] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsRemoved]
GO
ALTER TABLE [dbo].[Payments] ADD  DEFAULT ((0.0)) FOR [FinalAmount]
GO
ALTER TABLE [dbo].[Promotions] ADD  DEFAULT ((0)) FOR [UsedQuantity]
GO
ALTER TABLE [dbo].[Seats] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsRemoved]
GO
ALTER TABLE [dbo].[Seats] ADD  DEFAULT (N'') FOR [SeatType]
GO
ALTER TABLE [dbo].[ShowTimes] ADD  DEFAULT ((0.0)) FOR [VipTicketPrice]
GO
ALTER TABLE [dbo].[Theaters] ADD  DEFAULT (N'') FOR [Description]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Theaters_ManagedTheaterId] FOREIGN KEY([ManagedTheaterId])
REFERENCES [dbo].[Theaters] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Theaters_ManagedTheaterId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Theaters_TheaterId] FOREIGN KEY([TheaterId])
REFERENCES [dbo].[Theaters] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Theaters_TheaterId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BookingDetails]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetails_Bookings_BookingId] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Bookings] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BookingDetails] CHECK CONSTRAINT [FK_BookingDetails_Bookings_BookingId]
GO
ALTER TABLE [dbo].[BookingDetails]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetails_Seats_SeatId] FOREIGN KEY([SeatId])
REFERENCES [dbo].[Seats] ([Id])
GO
ALTER TABLE [dbo].[BookingDetails] CHECK CONSTRAINT [FK_BookingDetails_Seats_SeatId]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_AspNetUsers_CheckedInBy] FOREIGN KEY([CheckedInBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_AspNetUsers_CheckedInBy]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_ShowTimes_ShowTimeId] FOREIGN KEY([ShowTimeId])
REFERENCES [dbo].[ShowTimes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_ShowTimes_ShowTimeId]
GO
ALTER TABLE [dbo].[ConcessionOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_ConcessionOrderDetails_ConcessionOrders_ConcessionOrderId] FOREIGN KEY([ConcessionOrderId])
REFERENCES [dbo].[ConcessionOrders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConcessionOrderDetails] CHECK CONSTRAINT [FK_ConcessionOrderDetails_ConcessionOrders_ConcessionOrderId]
GO
ALTER TABLE [dbo].[ConcessionOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_ConcessionOrderDetails_Concessions_ConcessionId] FOREIGN KEY([ConcessionId])
REFERENCES [dbo].[Concessions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConcessionOrderDetails] CHECK CONSTRAINT [FK_ConcessionOrderDetails_Concessions_ConcessionId]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_AspNetUsers_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_AspNetUsers_EmployeeId]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Bookings_BookingId] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Bookings] ([Id])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Bookings_BookingId]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_ConcessionOrders_ConcessionOrderId] FOREIGN KEY([ConcessionOrderId])
REFERENCES [dbo].[ConcessionOrders] ([Id])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_ConcessionOrders_ConcessionOrderId]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Promotions_PromotionId] FOREIGN KEY([PromotionId])
REFERENCES [dbo].[Promotions] ([Id])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Promotions_PromotionId]
GO
ALTER TABLE [dbo].[Screens]  WITH CHECK ADD  CONSTRAINT [FK_Screens_Theaters_TheaterId] FOREIGN KEY([TheaterId])
REFERENCES [dbo].[Theaters] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Screens] CHECK CONSTRAINT [FK_Screens_Theaters_TheaterId]
GO
ALTER TABLE [dbo].[Seats]  WITH CHECK ADD  CONSTRAINT [FK_Seats_Screens_ScreenId] FOREIGN KEY([ScreenId])
REFERENCES [dbo].[Screens] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Seats] CHECK CONSTRAINT [FK_Seats_Screens_ScreenId]
GO
ALTER TABLE [dbo].[ShowTimes]  WITH CHECK ADD  CONSTRAINT [FK_ShowTimes_Movies_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShowTimes] CHECK CONSTRAINT [FK_ShowTimes_Movies_MovieId]
GO
ALTER TABLE [dbo].[ShowTimes]  WITH CHECK ADD  CONSTRAINT [FK_ShowTimes_Screens_ScreenId] FOREIGN KEY([ScreenId])
REFERENCES [dbo].[Screens] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShowTimes] CHECK CONSTRAINT [FK_ShowTimes_Screens_ScreenId]
GO
ALTER TABLE [dbo].[Theaters]  WITH CHECK ADD  CONSTRAINT [FK_Theaters_Provinces_ProvinceId] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[Provinces] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Theaters] CHECK CONSTRAINT [FK_Theaters_Provinces_ProvinceId]
GO
USE [master]
GO
ALTER DATABASE [KinemaDb] SET  READ_WRITE 
GO
