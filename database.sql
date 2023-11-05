USE [master]
GO
/****** Object:  Database [prj_project]    Script Date: 11/2/2023 5:17:52 PM ******/
CREATE DATABASE [prj_project]

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
/****** Object:  Table [dbo].[Account]    Script Date: 11/2/2023 5:17:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[email] [varchar](100) NOT NULL,
	[password] [varchar](50) NULL,
	[fullName] [nvarchar](50) NULL,
	[birthdate] [date] NULL,
	[role] [nvarchar](50) NULL,
	[sex] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 11/2/2023 5:17:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[addressID] [int] IDENTITY(1,1) NOT NULL,
	[phoneNumber] [varchar](15) NULL,
	[name] [nvarchar](50) NULL,
	[detailAddress] [text] NULL,
	[email] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[addressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/2/2023 5:17:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](50) NULL,
	[description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/2/2023 5:17:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[time] [datetime] NULL,
	[orderStatus] [nvarchar](50) NULL,
	[total] [int] NULL,
	[description] [text] NULL,
	[email] [varchar](100) NULL,
	[addressID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 11/2/2023 5:17:53 PM ******/
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
/****** Object:  Table [dbo].[Payment]    Script Date: 11/2/2023 5:17:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[paymentID] [int] IDENTITY(1,1) NOT NULL,
	[paymentMethod] [nvarchar](50) NULL,
	[paymentStatus] [nvarchar](50) NULL,
	[fee] [int] NULL,
	[time] [datetime] NULL,
	[totalPayment] [int] NULL,
	[transactionID] [text] NULL,
	[orderID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[paymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/2/2023 5:17:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](100) NULL,
	[discount] [int] NULL,
	[quantity] [int] NULL,
	[description] [text] NULL,
	[categoryID] [int] NULL,
	[image] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 11/2/2023 5:17:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlist](
	[wishlistID] [int] IDENTITY(1,1) NOT NULL,
	[wishlistName] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[email] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[wishlistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishlistItem]    Script Date: 11/2/2023 5:17:53 PM ******/
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
INSERT [dbo].[Account] ([email], [password], [fullName], [birthdate], [role], [sex]) VALUES (N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'Admin', CAST(N'1998-01-20' AS Date), N'admin', N'male')
INSERT [dbo].[Account] ([email], [password], [fullName], [birthdate], [role], [sex]) VALUES (N'customer1', N'ffbc4675f864e0e9aab8bdf7a0437010', N'Lê Văn A', CAST(N'2003-02-22' AS Date), N'member', N'male')
INSERT [dbo].[Account] ([email], [password], [fullName], [birthdate], [role], [sex]) VALUES (N'customer2', N'5ce4d191fd14ac85a1469fb8c29b7a7b', N'Nguyễn Thị B', CAST(N'2000-03-15' AS Date), N'member', N'female')
INSERT [dbo].[Account] ([email], [password], [fullName], [birthdate], [role], [sex]) VALUES (N'customer3', N'033f7f6121501ae98285ad77f216d5e7', N'Trần Văn C', CAST(N'1950-05-21' AS Date), N'member', N'male')
INSERT [dbo].[Account] ([email], [password], [fullName], [birthdate], [role], [sex]) VALUES (N'shipper1', N'c663e6aecc535a0f8fe90a84aa8a26c2', N'Lê Thị D', CAST(N'2001-09-23' AS Date), N'shipper', N'female')
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([categoryID], [categoryName], [description]) VALUES (1, N'Ice Pop', N'Good')
INSERT [dbo].[Category] ([categoryID], [categoryName], [description]) VALUES (2, N'Ice Juice', N'Good')
INSERT [dbo].[Category] ([categoryID], [categoryName], [description]) VALUES (3, N'Ice Cream', N'Good')
INSERT [dbo].[Category] ([categoryID], [categoryName], [description]) VALUES (4, N'Ice Drink', N'Good')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (1, N'Chocolate Ice Cream', 0, 10, N'Good', 1, N'kem_socola_1.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (2, N'Milk Ice Cream', 0, 10, N'Good', 1, N'kem_sua_2.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (3, N'Strawberry Ice Cream', 0, 10, N'Good', 1, N'kem_dau_3.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (4, N'Watermelon Ice Cream', 0, 10, N'Good', 1, N'kem_duahau_4.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (5, N'Peanut Ice Cream', 0, 10, N'Good', 1, N'kem_dauphong_5.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (6, N'Bean Cheese Ice Cream', 0, 10, N'Good', 1, N'kem_dauphomai_6.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (7, N'Taro Ice Cream
', 0, 10, N'Good', 1, N'kem_khoaimon_7.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (8, N'Orange Ice Cream', 0, 10, N'Good', 1, N'kem_cam_8.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (9, N'Banana Ice Cream', 0, 10, N'Good', 1, N'kem_chuoi_9.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (10, N'Jelly Ice Cream', 0, 10, N'Good', 1, N'kem_thach_10.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (11, N'Grapefruit Juice', 0, 10, N'Good', 2, N'ep_buoi_1.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (12, N'Orange juice
', 0, 10, N'Good', 2, N'ep_cam_2.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (13, N'Tomato juice
', 0, 10, N'Good', 2, N'ep_cachua_3.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (14, N'Passion Fruit Juice', 0, 9, N'Good', 2, N'ep_chanhday_4.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (15, N'Passion Fruit Juice', 0, 9, N'Good', 2, N'ep_dau_5.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (16, N'Toad Juice
', 0, 9, N'Good', 2, N'ep_coc_6.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (17, N'green bean ice cream
', 0, 9, N'Good', 3, N'kemtuoi1.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (18, N'Cream Rum', 0, 9, N'Good', 3, N'kemtuoi2.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (19, N'Fresh watermelon ice cream', 0, 9, N'Good', 3, N'kemtuoi5.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (20, N'Strawberry smoothie', 0, 9, N'Good', 4, N'sinhto1.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (21, N'mango blended
', 0, 9, N'Good', 4, N'sinhto2.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (22, N'Asparagus smoothie', 0, 9, N'Good', 4, N'sinhto3.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (23, N'avocado smoothie', 0, 9, N'Good', 4, N'sinhto5.png')
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image]) VALUES (24, N'Asparagus smoothie', 0, 9, N'Good', 4, N'sinhto4.png')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD FOREIGN KEY([email])
REFERENCES [dbo].[Account] ([email])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([addressID])
REFERENCES [dbo].[Address] ([addressID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([email])
REFERENCES [dbo].[Account] ([email])
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD FOREIGN KEY([orderID])
REFERENCES [dbo].[Order] ([orderID])
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([orderID])
REFERENCES [dbo].[Order] ([orderID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([categoryID])
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD FOREIGN KEY([email])
REFERENCES [dbo].[Account] ([email])
GO
ALTER TABLE [dbo].[WishlistItem]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[WishlistItem]  WITH CHECK ADD FOREIGN KEY([wishlistID])
REFERENCES [dbo].[Wishlist] ([wishlistID])
GO
USE [master]
GO
ALTER DATABASE [prj_project] SET  READ_WRITE 
GO
