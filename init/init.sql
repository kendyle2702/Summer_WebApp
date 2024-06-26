USE [master]
GO
/****** Object:  Database [prj_project]    Script Date: 3/27/2024 10:21:43 AM ******/
CREATE DATABASE [prj_project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'prj_project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\prj_project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'prj_project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\prj_project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [prj_project] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [prj_project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [prj_project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [prj_project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [prj_project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [prj_project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [prj_project] SET ARITHABORT OFF 
GO
ALTER DATABASE [prj_project] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [prj_project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [prj_project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [prj_project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [prj_project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [prj_project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [prj_project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [prj_project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [prj_project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [prj_project] SET  ENABLE_BROKER 
GO
ALTER DATABASE [prj_project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [prj_project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [prj_project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [prj_project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [prj_project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [prj_project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [prj_project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [prj_project] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [prj_project] SET  MULTI_USER 
GO
ALTER DATABASE [prj_project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [prj_project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [prj_project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [prj_project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [prj_project] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [prj_project] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [prj_project] SET QUERY_STORE = ON
GO
ALTER DATABASE [prj_project] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [prj_project]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/27/2024 10:21:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[email] [varchar](100) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[fullName] [nvarchar](50) NOT NULL,
	[birthdate] [date] NULL,
	[role] [nvarchar](50) NOT NULL,
	[sex] [nvarchar](10) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Account__AB6E6165FFA585DF] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 3/27/2024 10:21:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[addressID] [int] IDENTITY(1,1) NOT NULL,
	[phoneNumber] [varchar](15) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[detailAddress] [nvarchar](200) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Address__26A1118DFD1D6235] PRIMARY KEY CLUSTERED 
(
	[addressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/27/2024 10:21:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](50) NOT NULL,
	[description] [text] NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Category__23CAF1F8BA09413D] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/27/2024 10:21:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[time] [datetime] NOT NULL,
	[orderStatus] [nvarchar](50) NOT NULL,
	[total] [int] NOT NULL,
	[description] [nvarchar](1000) NULL,
	[email] [varchar](100) NOT NULL,
	[addressID] [int] NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Order__0809337DC2943E26] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 3/27/2024 10:21:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[quantity] [int] NOT NULL,
	[productID] [int] NOT NULL,
	[orderID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[quantity] ASC,
	[productID] ASC,
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 3/27/2024 10:21:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[paymentID] [int] IDENTITY(1,1) NOT NULL,
	[paymentMethod] [nvarchar](50) NOT NULL,
	[paymentStatus] [nvarchar](50) NOT NULL,
	[fee] [int] NOT NULL,
	[time] [datetime] NOT NULL,
	[totalPayment] [int] NOT NULL,
	[transactionID] [text] NOT NULL,
	[orderID] [int] NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Payment__A0D9EFA678012DFF] PRIMARY KEY CLUSTERED 
(
	[paymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/27/2024 10:21:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](100) NOT NULL,
	[discount] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[description] [text] NULL,
	[categoryID] [int] NOT NULL,
	[image] [nvarchar](100) NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[createTime] [date] NOT NULL,
	[price] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK__Product__2D10D14A75A47E89] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 3/27/2024 10:21:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlist](
	[wishlistID] [int] IDENTITY(1,1) NOT NULL,
	[wishlistName] [nvarchar](50) NOT NULL,
	[time] [datetime] NOT NULL,
	[email] [varchar](100) NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[defaultValue] [bit] NOT NULL,
 CONSTRAINT [PK__Wishlist__46E2A1D04E5737C2] PRIMARY KEY CLUSTERED 
(
	[wishlistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishlistItem]    Script Date: 3/27/2024 10:21:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishlistItem](
	[quantity] [int] NOT NULL,
	[wishlistID] [int] NOT NULL,
	[productID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[quantity] ASC,
	[wishlistID] ASC,
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([email], [password], [fullName], [birthdate], [role], [sex], [isDeleted]) VALUES (N'admin@gmail.com', N'21232f297a57a5a743894a0e4a801fc3', N'Admin', CAST(N'1998-01-20' AS Date), N'admin', N'male', 0)
INSERT [dbo].[Account] ([email], [password], [fullName], [birthdate], [role], [sex], [isDeleted]) VALUES (N'customer1@gmail.com', N'ffbc4675f864e0e9aab8bdf7a0437010', N'Lê Văn A', CAST(N'2003-02-22' AS Date), N'member', N'male', 0)
INSERT [dbo].[Account] ([email], [password], [fullName], [birthdate], [role], [sex], [isDeleted]) VALUES (N'customer2@gmail.com', N'5ce4d191fd14ac85a1469fb8c29b7a7b', N'Nguyễn Thị B', CAST(N'2000-03-15' AS Date), N'member', N'female', 0)
INSERT [dbo].[Account] ([email], [password], [fullName], [birthdate], [role], [sex], [isDeleted]) VALUES (N'customer3@gmail.com', N'033f7f6121501ae98285ad77f216d5e7', N'Trần Văn C', CAST(N'1950-05-21' AS Date), N'member', N'male', 0)
INSERT [dbo].[Account] ([email], [password], [fullName], [birthdate], [role], [sex], [isDeleted]) VALUES (N'customer4@gmail.com', N'55feb130be438e686ad6a80d12dd8f44', N'La Hoang Khoi', CAST(N'2003-08-12' AS Date), N'member', N'male', 0)
INSERT [dbo].[Account] ([email], [password], [fullName], [birthdate], [role], [sex], [isDeleted]) VALUES (N'customer5@gmail.com', N'9e8486cdd435beda9a60806dd334d964', N'Le Chi Khiem', CAST(N'2003-12-21' AS Date), N'member', N'male', 0)
INSERT [dbo].[Account] ([email], [password], [fullName], [birthdate], [role], [sex], [isDeleted]) VALUES (N'customer6@gmail.com', N'dbaa8bd25e06cc641f5406027c026e8b', N'John Lee', CAST(N'1990-01-01' AS Date), N'member', N'male', 0)
INSERT [dbo].[Account] ([email], [password], [fullName], [birthdate], [role], [sex], [isDeleted]) VALUES (N'customer7@gmail.com', N'81162e1ef3d93f96b36d3712ca52bca5', N'John Dat', CAST(N'1999-03-01' AS Date), N'member', N'male', 0)
INSERT [dbo].[Account] ([email], [password], [fullName], [birthdate], [role], [sex], [isDeleted]) VALUES (N'customer8@gmail.com', N'3079e3991f94d1b3b21b894f329d369d', N'Tran Dat', CAST(N'2003-08-19' AS Date), N'shipper', N'male', 0)
INSERT [dbo].[Account] ([email], [password], [fullName], [birthdate], [role], [sex], [isDeleted]) VALUES (N'shipper1@gmail.com', N'c663e6aecc535a0f8fe90a84aa8a26c2', N'Lê Thị D', CAST(N'2001-09-23' AS Date), N'shipper', N'female', 0)
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([addressID], [phoneNumber], [name], [detailAddress], [email], [isDeleted]) VALUES (4, N'0978104455', N'Lê Văn Sáu', N'Đường 30/4, Ninh Kiều, Cần Thơ', N'customer2@gmail.com', 0)
INSERT [dbo].[Address] ([addressID], [phoneNumber], [name], [detailAddress], [email], [isDeleted]) VALUES (6, N'0978104455', N'Lê Văn Một', N'Đường Trần Hoàng Na, Ninh Kiều, Cần Thơ', N'customer1@gmail.com', 0)
INSERT [dbo].[Address] ([addressID], [phoneNumber], [name], [detailAddress], [email], [isDeleted]) VALUES (7, N'0972304455', N'Lê Văn Hai', N'Nguyễn Văn Cừ, Ninh Kiều, Cần Thơ', N'customer3@gmail.com', 0)
INSERT [dbo].[Address] ([addressID], [phoneNumber], [name], [detailAddress], [email], [isDeleted]) VALUES (8, N'0972304455', N'Lê Văn Hai', N'Nguyễn Văn Cừ, Ninh Kiều, Cần Thơ', N'customer3@gmail.com', 0)
INSERT [dbo].[Address] ([addressID], [phoneNumber], [name], [detailAddress], [email], [isDeleted]) VALUES (11, N'0943564987', N'Khiem Le', N'58 Bạch Đằng Cần Thơ', N'customer5@gmail.com', 0)
INSERT [dbo].[Address] ([addressID], [phoneNumber], [name], [detailAddress], [email], [isDeleted]) VALUES (12, N'0956123799', N'Khiem Tran', N'79 Cái Răng Cần Thơ', N'customer5@gmail.com', 0)
INSERT [dbo].[Address] ([addressID], [phoneNumber], [name], [detailAddress], [email], [isDeleted]) VALUES (13, N'0943658987', N'Khoi La', N'123 Bạch Đằng Cần Thơ', N'customer4@gmail.com', 0)
INSERT [dbo].[Address] ([addressID], [phoneNumber], [name], [detailAddress], [email], [isDeleted]) VALUES (14, N'0945653214', N'Khoi Hoang', N'456 Ninh Kiều Cần Thơ', N'customer4@gmail.com', 0)
INSERT [dbo].[Address] ([addressID], [phoneNumber], [name], [detailAddress], [email], [isDeleted]) VALUES (15, N'0945654789', N'Dat Tran', N'89 Nhà Mát Bạc Liêu', N'customer6@gmail.com', 0)
INSERT [dbo].[Address] ([addressID], [phoneNumber], [name], [detailAddress], [email], [isDeleted]) VALUES (16, N'0614563123', N'Dat Duy', N'567 Ninh Kiều Cần Thơ', N'customer6@gmail.com', 0)
INSERT [dbo].[Address] ([addressID], [phoneNumber], [name], [detailAddress], [email], [isDeleted]) VALUES (17, N'0943256789', N'Quốc Cư', N'152 Nhà Mát Sóc Trăng', N'customer7@gmail.com', 0)
INSERT [dbo].[Address] ([addressID], [phoneNumber], [name], [detailAddress], [email], [isDeleted]) VALUES (18, N'0945654156', N'Quốc Long', N'456 Phụng Hiệp Cần Thơ', N'customer7@gmail.com', 0)
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([categoryID], [categoryName], [description], [isDeleted]) VALUES (1, N'Ice Pop', N'Good Oke', 0)
INSERT [dbo].[Category] ([categoryID], [categoryName], [description], [isDeleted]) VALUES (2, N'Ice Juice', N'Good Oke', 0)
INSERT [dbo].[Category] ([categoryID], [categoryName], [description], [isDeleted]) VALUES (3, N'Ice Cream', N'Good OKe', 0)
INSERT [dbo].[Category] ([categoryID], [categoryName], [description], [isDeleted]) VALUES (4, N'Ice Drink', N'Good', 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (1, CAST(N'2023-11-06T23:27:28.633' AS DateTime), N'Success', 200000, N'Giao nhanh giúp tôi', N'customer1@gmail.com', 6, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (2, CAST(N'2023-11-06T23:27:28.633' AS DateTime), N'Give back', 150000, N'lay hang nhanh', N'customer2@gmail.com', 4, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (3, CAST(N'2023-11-06T23:27:28.633' AS DateTime), N'Delivering', 150000, N'Tôi muốn lấy cái màu xanh', N'customer3@gmail.com', 7, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (4, CAST(N'2023-11-06T23:27:28.633' AS DateTime), N'Cancelled', 20000, N'Giao hàng sớm 1 ngày giúp tôi', N'customer2@gmail.com', 4, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (5, CAST(N'2023-11-06T01:27:28.633' AS DateTime), N'Pending', 20000, N'Giao hàng sớm 1 ngày giúp tôi', N'customer2@gmail.com', 4, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (8, CAST(N'2023-11-07T10:00:28.633' AS DateTime), N'Give back', 1000000, N'Hãy giao hàng nhanh giúp tui', N'customer1@gmail.com', 6, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (9, CAST(N'2023-11-08T09:30:28.633' AS DateTime), N'Delivering', 755000, N'Giao hàng nhanh dùm tui nhé', N'customer1@gmail.com', 6, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (10, CAST(N'2023-11-07T15:30:28.633' AS DateTime), N'Cancelled', 800000, N'cho tui thêm thông tin', N'customer1@gmail.com', 6, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (11, CAST(N'2023-11-05T17:30:28.633' AS DateTime), N'Pending', 900000, N'Vận chuyển nhanh giúp mình', N'customer1@gmail.com', 6, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (12, CAST(N'2023-11-05T11:30:28.633' AS DateTime), N'Give back', 1000000, N'giao hàng nhanh sớm hơn nhé', N'customer1@gmail.com', 6, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (13, CAST(N'2023-11-04T08:40:28.633' AS DateTime), N'Awaiting delivery', 150000, N'vận chuyển cẩn thận giúp mình', N'customer2@gmail.com', 4, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (14, CAST(N'2023-09-08T19:50:28.633' AS DateTime), N'Delivering', 855000, N'Giao hàng nhanh dùm tui nhé', N'customer2@gmail.com', 4, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (15, CAST(N'2023-10-07T10:30:28.633' AS DateTime), N'Cancelled', 970000, N'xin thêm thông tin về sản phẩm', N'customer2@gmail.com', 4, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (16, CAST(N'2023-10-05T14:20:28.633' AS DateTime), N'Pending', 960000, N'vận chuyển cẩn thận giúp mình', N'customer2@gmail.com', 4, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (17, CAST(N'2023-09-05T12:40:28.633' AS DateTime), N'Give back', 640000, N'giao hàng trong vài ngày tới nhá', N'customer2@gmail.com', 4, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (18, CAST(N'2023-10-04T10:40:28.633' AS DateTime), N'Awaiting delivery', 600000, N'giao hàng trong vài ngày tới nhá', N'customer3@gmail.com', 8, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (19, CAST(N'2023-11-08T20:50:28.633' AS DateTime), N'Delivering', 905000, N'Giao hàng nhanh dùm tui nhé', N'customer3@gmail.com', 7, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (20, CAST(N'2023-10-07T10:30:28.633' AS DateTime), N'Cancelled', 975000, N'vận chuyển cẩn thận giúp mình', N'customer3@gmail.com', 7, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (21, CAST(N'2023-10-15T18:40:28.633' AS DateTime), N'Pending', 980000, N'Giao hàng nhanh dùm tui nhé', N'customer3@gmail.com', 8, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (22, CAST(N'2023-10-05T12:45:28.633' AS DateTime), N'Give back', 690000, N'Giao hàng nhanh dùm tui nhé', N'customer3@gmail.com', 7, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (23, CAST(N'2023-08-07T17:30:28.633' AS DateTime), N'Cancelled', 990000, N'cho tui thêm thông tin về sản phẩm', N'customer3@gmail.com', 7, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (24, CAST(N'2023-10-09T18:20:28.633' AS DateTime), N'Pending', 960000, N'vận chuyển cẩn thận giúp mình', N'customer3@gmail.com', 8, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (25, CAST(N'2023-11-06T11:44:28.633' AS DateTime), N'Awaiting delivery', 800000, N'vận chuyển cẩn thận giúp mình', N'customer4@gmail.com', 13, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (26, CAST(N'2023-12-04T20:54:28.633' AS DateTime), N'Delivering', 605000, N'Giao hàng nhanh dùm tui nhé', N'customer4@gmail.com', 14, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (27, CAST(N'2023-04-06T13:35:28.633' AS DateTime), N'Cancelled', 685000, N'giao hàng cho tui trong giờ hành chính nhé', N'customer4@gmail.com', 13, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (28, CAST(N'2023-05-12T14:12:28.633' AS DateTime), N'Pending', 560000, N'vận chuyển cẩn thận giúp mình', N'customer4@gmail.com', 13, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (29, CAST(N'2023-05-12T15:41:28.633' AS DateTime), N'Give back', 750000, N'Giao hàng trong vài ngày tiếp theo', N'customer4@gmail.com', 14, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (30, CAST(N'2023-09-13T11:51:28.633' AS DateTime), N'Cancelled', 560000, N'cho tui thêm thông tin về sản phẩm', N'customer4@gmail.com', 13, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (31, CAST(N'2023-12-14T14:31:28.633' AS DateTime), N'Pending', 520000, N'vận chuyển cẩn thận giúp mình', N'customer4@gmail.com', 14, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (32, CAST(N'2023-11-08T11:41:28.633' AS DateTime), N'Awaiting delivery', 800000, N'Hãy giao hàng nhanh', N'customer5@gmail.com', 11, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (33, CAST(N'2023-11-04T12:45:28.633' AS DateTime), N'Delivering', 605000, N'Giao hàng nhanh và cẩn thận ', N'customer5@gmail.com', 11, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (34, CAST(N'2023-05-11T15:11:28.633' AS DateTime), N'Cancelled', 685000, N'giao hàng cẩn thận giúp tui ', N'customer5@gmail.com', 12, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (35, CAST(N'2023-09-16T12:13:28.633' AS DateTime), N'Pending', 560000, N'vận chuyển hàng nhanh ', N'customer5@gmail.com', 12, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (36, CAST(N'2023-08-17T16:51:28.633' AS DateTime), N'Give back', 750000, N'Giao hàng trong vài ngày tiếp theo', N'customer5@gmail.com', 11, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (37, CAST(N'2023-10-17T12:11:28.633' AS DateTime), N'Cancelled', 560000, N'sản phẩm này thông tin thêm ', N'customer5@gmail.com', 12, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (38, CAST(N'2023-11-14T13:43:28.633' AS DateTime), N'Pending', 520000, N'vận chuyển nhanh nhé ', N'customer5@gmail.com', 12, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (39, CAST(N'2023-11-08T20:41:28.633' AS DateTime), N'Awaiting delivery', 900000, N'Hãy giao hàng nhanh', N'customer6@gmail.com', 15, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (40, CAST(N'2023-11-04T21:45:28.633' AS DateTime), N'Delivering', 705000, N'dua hàng nhanh và cẩn thận ', N'customer6@gmail.com', 16, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (41, CAST(N'2023-05-11T12:31:28.633' AS DateTime), N'Cancelled', 885000, N'giao hàng cẩn thận giúp tui', N'customer6@gmail.com', 16, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (42, CAST(N'2023-09-16T11:31:28.633' AS DateTime), N'Pending', 660000, N'chuyển hàng nhanh', N'customer6@gmail.com', 15, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (43, CAST(N'2023-08-17T11:32:28.633' AS DateTime), N'Give back', 520000, N'Giao hàng trong vài ngày tiếp theo', N'customer6@gmail.com', 16, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (44, CAST(N'2023-10-17T12:51:28.633' AS DateTime), N'Cancelled', 520000, N'sản phẩm này cần thông tin thêm ', N'customer6@gmail.com', 15, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (45, CAST(N'2023-11-14T14:45:28.633' AS DateTime), N'Pending', 250000, N'lấy nhanh giúp mình', N'customer6@gmail.com', 16, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (46, CAST(N'2023-11-06T21:44:28.633' AS DateTime), N'Awaiting delivery', 120000, N'Hãy đưa hàng sớm nhá', N'customer7@gmail.com', 17, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (47, CAST(N'2023-10-12T18:41:28.633' AS DateTime), N'Delivering', 345000, N'dua hàng nhanh  ', N'customer7@gmail.com', 18, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (48, CAST(N'2023-12-12T19:43:28.633' AS DateTime), N'Cancelled', 435000, N'giao hàng cẩn thận  ', N'customer7@gmail.com', 17, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (49, CAST(N'2023-12-16T12:33:28.633' AS DateTime), N'Pending', 310000, N'chuyển hàng nhanh  ', N'customer7@gmail.com', 17, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (50, CAST(N'2023-04-11T18:32:28.633' AS DateTime), N'Give back', 430000, N'Giao hàng trong ngày tiếp theo', N'customer7@gmail.com', 17, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (51, CAST(N'2023-08-17T13:23:28.633' AS DateTime), N'Cancelled', 430000, N'sản phẩm này cần thêm thông tin ?', N'customer7@gmail.com', 18, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (52, CAST(N'2023-12-14T14:40:28.633' AS DateTime), N'Pending', 530000, N'lấy nhanh giúp mình', N'customer7@gmail.com', 18, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (53, CAST(N'2023-04-09T18:20:28.633' AS DateTime), N'Success', 230000, N'Giao lẹ nhen', N'customer1@gmail.com', 6, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (54, CAST(N'2023-11-09T18:20:28.633' AS DateTime), N'Success', 110000, N'Giao loại vừa', N'customer2@gmail.com', 4, 0)
INSERT [dbo].[Order] ([orderID], [time], [orderStatus], [total], [description], [email], [addressID], [isDeleted]) VALUES (55, CAST(N'2023-10-09T18:20:28.633' AS DateTime), N'Success', 120000, N'Giao loại vừa', N'customer3@gmail.com', 7, 0)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (1, 8, 1)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (1, 10, 1)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (1, 11, 2)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (1, 14, 2)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (1, 15, 2)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (1, 16, 42)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (1, 24, 43)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (2, 2, 1)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (2, 3, 1)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (2, 3, 2)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (2, 3, 4)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (2, 3, 5)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (2, 5, 45)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (2, 6, 3)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (2, 6, 4)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (2, 10, 47)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (2, 13, 23)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (2, 14, 20)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (2, 14, 46)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (2, 20, 19)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (3, 7, 8)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (3, 14, 32)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (3, 16, 30)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (3, 18, 40)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (3, 19, 12)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (3, 21, 29)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (3, 21, 42)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (4, 1, 46)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (4, 9, 8)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (4, 9, 14)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (4, 14, 36)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (4, 15, 23)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (4, 16, 10)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (4, 17, 12)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (4, 20, 21)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (4, 20, 41)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (4, 22, 34)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (4, 24, 15)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (5, 2, 46)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (5, 4, 33)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (5, 8, 4)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (5, 10, 9)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (5, 13, 28)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (5, 14, 13)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (5, 14, 44)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (5, 15, 11)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (5, 15, 26)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (5, 15, 27)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (5, 15, 31)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (5, 15, 49)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (5, 20, 38)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (5, 20, 40)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (5, 20, 50)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (5, 23, 52)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (6, 5, 3)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (6, 12, 25)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (6, 13, 30)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (6, 13, 37)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (6, 13, 48)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (6, 14, 10)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (6, 17, 22)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (6, 18, 11)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (6, 20, 51)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (7, 6, 35)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (7, 10, 34)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (7, 19, 22)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (7, 21, 40)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (7, 24, 24)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (8, 6, 5)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (8, 14, 39)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (8, 17, 40)
INSERT [dbo].[OrderItem] ([quantity], [productID], [orderID]) VALUES (9, 20, 38)
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (1, N'Success', N'COD', 0, CAST(N'2023-11-08T13:40:20.000' AS DateTime), 200000, N'14253', 1, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (2, N'Success', N'Banking', 0, CAST(N'2023-10-08T14:40:20.000' AS DateTime), 20000, N'14783', 4, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (3, N'Pending', N'Banking', 0, CAST(N'2023-10-14T16:50:20.000' AS DateTime), 150000, N'14783', 3, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (4, N'Success', N'Banking', 0, CAST(N'2023-09-15T11:42:20.000' AS DateTime), 150000, N'17423', 2, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (5, N'Pending', N'COD', 0, CAST(N'2023-09-25T12:52:20.000' AS DateTime), 800000, N'17589', 10, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (6, N'Pending', N'Banking', 0, CAST(N'2023-11-15T14:22:20.000' AS DateTime), 970000, N'17529', 15, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (7, N'Success', N'COD', 0, CAST(N'2023-08-16T10:32:20.000' AS DateTime), 1000000, N'24529', 12, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (8, N'Pending', N'Banking', 0, CAST(N'2023-10-26T16:32:20.000' AS DateTime), 855000, N'22329', 14, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (9, N'Pending', N'COD', 0, CAST(N'2023-09-25T13:42:20.000' AS DateTime), 960000, N'32569', 24, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (10, N'Success', N'COD', 0, CAST(N'2023-08-15T15:22:20.000' AS DateTime), 855000, N'32569', 14, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (11, N'Pending', N'COD', 0, CAST(N'2023-04-25T14:42:20.000' AS DateTime), 560000, N'34789', 28, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (12, N'Pending', N'Banking', 0, CAST(N'2023-09-18T15:52:20.000' AS DateTime), 600000, N'35689', 18, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (13, N'Success', N'COD', 0, CAST(N'2023-10-19T14:30:20.000' AS DateTime), 750000, N'458786', 29, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (14, N'Pending', N'COD', 0, CAST(N'2023-08-20T15:40:20.000' AS DateTime), 705000, N'789644', 40, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (15, N'Success', N'Banking', 0, CAST(N'2023-09-25T12:30:20.000' AS DateTime), 800000, N'76324', 32, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (16, N'Pending', N'Banking', 0, CAST(N'2023-05-27T14:50:20.000' AS DateTime), 705000, N'65214', 40, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (17, N'Pending', N'COD', 0, CAST(N'2023-05-30T19:50:20.000' AS DateTime), 605000, N'45789', 26, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (18, N'Pending', N'Banking', 0, CAST(N'2023-05-05T12:30:10.000' AS DateTime), 960000, N'563214', 16, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (19, N'Success', N'COD', 0, CAST(N'2023-09-15T14:20:10.000' AS DateTime), 800000, N'698745', 25, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (20, N'Success', N'Banking', 0, CAST(N'2023-06-25T12:40:10.000' AS DateTime), 800000, N'456321', 28, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (21, N'Success', N'Banking', 0, CAST(N'2023-06-25T12:40:10.000' AS DateTime), 560000, N'456321', 28, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (22, N'Pending', N'COD', 0, CAST(N'2023-09-27T16:52:10.000' AS DateTime), 6400000, N'541365', 17, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (23, N'Pending', N'Banking', 0, CAST(N'2023-10-28T17:22:10.000' AS DateTime), 1000000, N'235698', 12, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (24, N'Succes', N'Banking', 0, CAST(N'2023-04-16T10:32:10.000' AS DateTime), 800000, N'789632', 32, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (25, N'Pending', N'COD', 0, CAST(N'2023-04-16T09:12:10.000' AS DateTime), 520000, N'456325', 31, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (26, N'Success', N'Banking', 0, CAST(N'2023-04-26T19:32:10.000' AS DateTime), 800000, N'236547', 25, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (27, N'Success', N'COD', 0, CAST(N'2023-07-28T19:32:10.000' AS DateTime), 345000, N'789632', 47, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (28, N'Success', N'Banking', 0, CAST(N'2023-03-29T10:32:10.000' AS DateTime), 530000, N'523697', 52, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (29, N'Pending', N'COD', 0, CAST(N'2023-08-19T18:42:10.000' AS DateTime), 660000, N'245632', 42, 0)
INSERT [dbo].[Payment] ([paymentID], [paymentMethod], [paymentStatus], [fee], [time], [totalPayment], [transactionID], [orderID], [isDeleted]) VALUES (30, N'Pending', N'Banking', 0, CAST(N'2023-03-29T20:42:10.000' AS DateTime), 800000, N'23569', 25, 0)
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (1, N'Chocolate Ice Cream', 0, 20, N'GoodDDD', 1, N'kem_socola_1.png', 0, CAST(N'2023-11-05' AS Date), CAST(21000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (2, N'Milk Ice Cream', 25, 5, N'Good', 1, N'kem_sua_2.png', 1, CAST(N'2023-10-11' AS Date), CAST(25000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (3, N'Strawberry Ice Cream', 0, 10, N'GoodD', 1, N'kem_dau_3.png', 0, CAST(N'2023-11-05' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (4, N'Watermelon Ice Cream', 0, 10, N'Good', 1, N'kem_duahau_4.png', 0, CAST(N'2023-11-05' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (5, N'Peanut Ice Cream', 0, 10, N'Good', 1, N'kem_dauphong_5.png', 1, CAST(N'2023-11-05' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (6, N'Bean Cheese Ice Cream', 0, 10, N'Good', 1, N'kem_dauphomai_6.png', 1, CAST(N'2023-11-05' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (7, N'Taro Ice Cream', 0, 10, N'Good', 1, N'kem_khoaimon_7.png', 0, CAST(N'2023-11-05' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (8, N'Orange Ice Cream', 0, 10, N'Good', 1, N'kem_cam_8.png', 0, CAST(N'2023-11-05' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (9, N'Banana Ice Cream', 0, 10, N'Good', 1, N'kem_chuoi_9.png', 0, CAST(N'2023-11-05' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (10, N'Jelly Ice Cream', 0, 10, N'Good', 1, N'kem_thach_10.png', 0, CAST(N'2023-11-05' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (11, N'Grapefruit Juice', 0, 10, N'Good', 2, N'ep_buoi_1.png', 0, CAST(N'2023-12-29' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (12, N'Orange juice
', 0, 10, N'Good', 2, N'ep_cam_2.png', 0, CAST(N'2023-10-29' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (13, N'Tomato juice', 0, 10, N'Good', 2, N'ep_cachua_3.png', 0, CAST(N'2023-10-27' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (14, N'Passion Fruit Juice', 0, 9, N'Good', 2, N'ep_chanhday_4.png', 0, CAST(N'2023-10-30' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (15, N'Passion Fruit Juice', 0, 9, N'Good', 2, N'ep_dau_5.png', 0, CAST(N'2023-11-05' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (16, N'Toad Juice', 0, 9, N'Good', 2, N'ep_coc_6.png', 0, CAST(N'2023-11-05' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (17, N'green bean ice cream', 0, 9, N'Good', 3, N'kemtuoi1.png', 0, CAST(N'2023-11-05' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (18, N'Cream Rum', 0, 9, N'Good', 3, N'kemtuoi2.png', 0, CAST(N'2023-11-05' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (19, N'Fresh watermelon ice cream', 0, 9, N'Good', 3, N'kemtuoi5.png', 0, CAST(N'2023-11-05' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (20, N'Strawberry smoothie', 0, 9, N'Good', 4, N'sinhto1.png', 0, CAST(N'2023-11-05' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (21, N'manago blended', 0, 9, N'Good', 4, N'sinhto2.png', 0, CAST(N'2023-11-05' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (22, N'Asparagus smoothie', 0, 9, N'Good', 4, N'sinhto3.png', 0, CAST(N'2023-11-05' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (23, N'avocado smoothie', 0, 9, N'Good', 4, N'sinhto5.png', 0, CAST(N'2023-11-05' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (24, N'Asparagus smoothie', 0, 9, N'Good', 4, N'sinhto4.png', 0, CAST(N'2023-11-05' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (27, N'banana ice cream', 0, 18, N'Delicious', 3, N'kemchuoi.jpg', 0, CAST(N'2023-10-18' AS Date), CAST(30000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (28, N'Strawberry ice cream
', 10, 10, N'Good', 3, N'kemdautay.jpg', 0, CAST(N'2023-11-10' AS Date), CAST(25000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (29, N'Durian ice-cream', 0, 8, N'Delicious', 3, N'kemsaurieng.jpg', 0, CAST(N'2023-10-13' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (30, N'kemdauxanh', 0, 8, N'Good', 3, N'kemdauxanh.jpg', 0, CAST(N'2023-10-15' AS Date), CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (31, N'kemkhoaimon', 20, 10, N'Good New', 3, N'kemkhoaimon.jpg', 0, CAST(N'2023-11-15' AS Date), CAST(22000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (32, N'kemdao', 10, 8, N'Good New', 3, N'kemdao.jpg', 0, CAST(N'2023-11-18' AS Date), CAST(27000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (33, N'kemsocola', 0, 18, N'Good New', 3, N'kemsocola.jpg', 0, CAST(N'2023-10-18' AS Date), CAST(25000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (34, N'strawberry smoothie', 0, 10, N'Good New', 4, N'sinhtodau.jpg', 0, CAST(N'2023-11-09' AS Date), CAST(30000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (35, N'grapefruit smoothie', 10, 9, N'Good New', 4, N'sinhtobuoi.jpg', 0, CAST(N'2023-10-09' AS Date), CAST(35000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (36, N'avocado smoothie', 20, 10, N'Delicious', 4, N'sinhtobo.jpg', 0, CAST(N'2023-11-09' AS Date), CAST(28000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (37, N'Manago blended', 0, 8, N'Good New', 4, N'sinhtoxoai.jpg', 0, CAST(N'2023-11-09' AS Date), CAST(29000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted], [createTime], [price]) VALUES (38, N'jackfruit smoothie', 10, 10, N'Good New', 4, N'sinhtomit.jpg', 0, CAST(N'2023-10-09' AS Date), CAST(18000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Wishlist] ON 

INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (3, N'List kem yêu thích', CAST(N'2023-10-07T14:00:00.000' AS DateTime), N'customer1@gmail.com', 0, 0)
INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (4, N'List nước yêu thích', CAST(N'2023-10-08T15:30:00.000' AS DateTime), N'customer1@gmail.com', 0, 0)
INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (5, N'List nước yêu thích loại 2', CAST(N'2023-11-03T16:30:00.000' AS DateTime), N'customer1@gmail.com', 0, 0)
INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (6, N'List kem yêu thích loại 2', CAST(N'2023-11-05T12:30:00.000' AS DateTime), N'customer1@gmail.com', 0, 0)
INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (7, N'List kem của tôi', CAST(N'2023-11-03T17:30:00.000' AS DateTime), N'customer2@gmail.com', 0, 0)
INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (8, N'List nước yêu thích', CAST(N'2023-10-15T16:30:00.000' AS DateTime), N'customer2@gmail.com', 0, 0)
INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (9, N'List nước yêu thích của crush', CAST(N'2023-08-03T17:30:00.000' AS DateTime), N'customer2@gmail.com', 0, 0)
INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (10, N'List kem yêu thích của bồ', CAST(N'2023-11-07T15:30:00.000' AS DateTime), N'customer2@gmail.com', 0, 0)
INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (11, N'List kem yêu thích', CAST(N'2023-10-03T19:30:00.000' AS DateTime), N'customer3@gmail.com', 0, 0)
INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (12, N'List nước yêu thích nhất', CAST(N'2023-11-04T19:30:00.000' AS DateTime), N'customer3@gmail.com', 0, 0)
INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (13, N'List kem yêu thích của bồ', CAST(N'2023-09-09T14:30:00.000' AS DateTime), N'customer3@gmail.com', 0, 0)
INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (14, N'List kem yêu thích', CAST(N'2023-09-03T20:30:00.000' AS DateTime), N'customer4@gmail.com', 0, 0)
INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (15, N'List nước hay dùng', CAST(N'2023-10-04T21:30:00.000' AS DateTime), N'customer4@gmail.com', 0, 0)
INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (16, N'List kem hay dùng nhất', CAST(N'2023-08-09T16:30:00.000' AS DateTime), N'customer4@gmail.com', 0, 0)
INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (17, N'hay dùng nhất', CAST(N'2023-11-03T18:40:00.000' AS DateTime), N'customer5@gmail.com', 0, 0)
INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (18, N'hay đặt để cho crush ăn', CAST(N'2023-09-04T20:30:00.000' AS DateTime), N'customer5@gmail.com', 0, 0)
INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (19, N'sơ thích của tui', CAST(N'2023-10-09T12:40:00.000' AS DateTime), N'customer5@gmail.com', 0, 0)
INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (20, N'hay mua về ăn', CAST(N'2023-11-03T22:40:00.000' AS DateTime), N'customer6@gmail.com', 0, 0)
INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (21, N'hay mua để dùng tại chỗ', CAST(N'2023-09-04T13:40:00.000' AS DateTime), N'customer6@gmail.com', 0, 0)
INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (22, N'sơ thích của bồ', CAST(N'2023-10-09T14:30:00.000' AS DateTime), N'customer6@gmail.com', 0, 0)
INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (23, N'hay mua', CAST(N'2023-09-03T14:40:00.000' AS DateTime), N'customer7@gmail.com', 0, 0)
INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (24, N'hay mua sau khi tập', CAST(N'2023-10-04T14:50:00.000' AS DateTime), N'customer7@gmail.com', 0, 0)
INSERT [dbo].[Wishlist] ([wishlistID], [wishlistName], [time], [email], [isDeleted], [defaultValue]) VALUES (25, N'sơ thích của tôi', CAST(N'2023-10-15T14:45:00.000' AS DateTime), N'customer7@gmail.com', 0, 0)
SET IDENTITY_INSERT [dbo].[Wishlist] OFF
GO
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (2, 3, 5)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (2, 7, 8)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (2, 10, 23)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (2, 13, 14)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (2, 15, 33)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (2, 16, 23)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (2, 17, 21)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (2, 24, 37)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (3, 4, 2)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (3, 6, 9)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (3, 9, 14)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (3, 14, 18)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (3, 17, 32)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (3, 19, 29)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (3, 23, 31)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (3, 25, 38)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (4, 5, 1)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (4, 8, 6)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (4, 11, 13)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (4, 14, 24)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (4, 16, 22)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (4, 16, 23)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (4, 17, 30)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (4, 18, 27)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (4, 18, 32)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (4, 19, 17)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (4, 21, 19)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (4, 22, 28)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (4, 23, 34)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (4, 24, 35)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (5, 12, 11)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (5, 17, 28)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (5, 20, 30)
INSERT [dbo].[WishlistItem] ([quantity], [wishlistID], [productID]) VALUES (6, 15, 19)
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK__Address__email__398D8EEE] FOREIGN KEY([email])
REFERENCES [dbo].[Account] ([email])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK__Address__email__398D8EEE]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__Order__addressID__4222D4EF] FOREIGN KEY([addressID])
REFERENCES [dbo].[Address] ([addressID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__Order__addressID__4222D4EF]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__Order__email__412EB0B6] FOREIGN KEY([email])
REFERENCES [dbo].[Account] ([email])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__Order__email__412EB0B6]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK__OrderItem__order__4F7CD00D] FOREIGN KEY([orderID])
REFERENCES [dbo].[Order] ([orderID])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK__OrderItem__order__4F7CD00D]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK__OrderItem__produ__4E88ABD4] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK__OrderItem__produ__4E88ABD4]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK__Payment__orderID__47DBAE45] FOREIGN KEY([orderID])
REFERENCES [dbo].[Order] ([orderID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK__Payment__orderID__47DBAE45]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__categor__3E52440B] FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([categoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__categor__3E52440B]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK__Wishlist__email__44FF419A] FOREIGN KEY([email])
REFERENCES [dbo].[Account] ([email])
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK__Wishlist__email__44FF419A]
GO
ALTER TABLE [dbo].[WishlistItem]  WITH CHECK ADD  CONSTRAINT [FK__WishlistI__produ__4BAC3F29] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[WishlistItem] CHECK CONSTRAINT [FK__WishlistI__produ__4BAC3F29]
GO
ALTER TABLE [dbo].[WishlistItem]  WITH CHECK ADD  CONSTRAINT [FK__WishlistI__wishl__4AB81AF0] FOREIGN KEY([wishlistID])
REFERENCES [dbo].[Wishlist] ([wishlistID])
GO
ALTER TABLE [dbo].[WishlistItem] CHECK CONSTRAINT [FK__WishlistI__wishl__4AB81AF0]
GO
USE [master]
GO
ALTER DATABASE [prj_project] SET  READ_WRITE 
GO
