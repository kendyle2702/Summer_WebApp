USE [master]
GO
/****** Object:  Database [prj_project]    Script Date: 11/4/2023 10:21:11 PM ******/
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
/****** Object:  Table [dbo].[Account]    Script Date: 11/4/2023 10:21:11 PM ******/
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
/****** Object:  Table [dbo].[Address]    Script Date: 11/4/2023 10:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[addressID] [int] IDENTITY(1,1) NOT NULL,
	[phoneNumber] [varchar](15) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[detailAddress] [text] NOT NULL,
	[email] [varchar](100) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Address__26A1118DFD1D6235] PRIMARY KEY CLUSTERED 
(
	[addressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/4/2023 10:21:11 PM ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 11/4/2023 10:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[time] [datetime] NOT NULL,
	[orderStatus] [nvarchar](50) NOT NULL,
	[total] [int] NOT NULL,
	[description] [text] NULL,
	[email] [varchar](100) NOT NULL,
	[addressID] [int] NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Order__0809337DC2943E26] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 11/4/2023 10:21:11 PM ******/
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
/****** Object:  Table [dbo].[Payment]    Script Date: 11/4/2023 10:21:11 PM ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 11/4/2023 10:21:11 PM ******/
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
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK__Product__2D10D14A75A47E89] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 11/4/2023 10:21:11 PM ******/
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
 CONSTRAINT [PK__Wishlist__46E2A1D04E5737C2] PRIMARY KEY CLUSTERED 
(
	[wishlistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishlistItem]    Script Date: 11/4/2023 10:21:11 PM ******/
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
INSERT [dbo].[Account] ([email], [password], [fullName], [birthdate], [role], [sex], [isDeleted]) VALUES (N'shipper1@gmail.com', N'c663e6aecc535a0f8fe90a84aa8a26c2', N'Lê Thị D', CAST(N'2001-09-23' AS Date), N'shipper', N'female', 0)
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([categoryID], [categoryName], [description], [isDeleted]) VALUES (1, N'Ice Pop', N'Good', 0)
INSERT [dbo].[Category] ([categoryID], [categoryName], [description], [isDeleted]) VALUES (2, N'Ice Juice', N'Good', 0)
INSERT [dbo].[Category] ([categoryID], [categoryName], [description], [isDeleted]) VALUES (3, N'Ice Cream', N'Good', 0)
INSERT [dbo].[Category] ([categoryID], [categoryName], [description], [isDeleted]) VALUES (4, N'Ice Drink', N'Good', 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (1, N'Chocolate Ice Cream', 0, 10, N'Good', 1, N'kem_socola_1.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (2, N'Milk Ice Cream', 0, 10, N'Good', 1, N'kem_sua_2.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (3, N'Strawberry Ice Cream', 0, 10, N'Good', 1, N'kem_dau_3.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (4, N'Watermelon Ice Cream', 0, 10, N'Good', 1, N'kem_duahau_4.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (5, N'Peanut Ice Cream', 0, 10, N'Good', 1, N'kem_dauphong_5.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (6, N'Bean Cheese Ice Cream', 0, 10, N'Good', 1, N'kem_dauphomai_6.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (7, N'Taro Ice Cream
', 0, 10, N'Good', 1, N'kem_khoaimon_7.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (8, N'Orange Ice Cream', 0, 10, N'Good', 1, N'kem_cam_8.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (9, N'Banana Ice Cream', 0, 10, N'Good', 1, N'kem_chuoi_9.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (10, N'Jelly Ice Cream', 0, 10, N'Good', 1, N'kem_thach_10.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (11, N'Grapefruit Juice', 0, 10, N'Good', 2, N'ep_buoi_1.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (12, N'Orange juice
', 0, 10, N'Good', 2, N'ep_cam_2.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (13, N'Tomato juice
', 0, 10, N'Good', 2, N'ep_cachua_3.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (14, N'Passion Fruit Juice', 0, 9, N'Good', 2, N'ep_chanhday_4.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (15, N'Passion Fruit Juice', 0, 9, N'Good', 2, N'ep_dau_5.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (16, N'Toad Juice
', 0, 9, N'Good', 2, N'ep_coc_6.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (17, N'green bean ice cream
', 0, 9, N'Good', 3, N'kemtuoi1.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (18, N'Cream Rum', 0, 9, N'Good', 3, N'kemtuoi2.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (19, N'Fresh watermelon ice cream', 0, 9, N'Good', 3, N'kemtuoi5.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (20, N'Strawberry smoothie', 0, 9, N'Good', 4, N'sinhto1.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (21, N'mango blended
', 0, 9, N'Good', 4, N'sinhto2.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (22, N'Asparagus smoothie', 0, 9, N'Good', 4, N'sinhto3.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (23, N'avocado smoothie', 0, 9, N'Good', 4, N'sinhto5.png', 0)
INSERT [dbo].[Product] ([productID], [productName], [discount], [quantity], [description], [categoryID], [image], [isDeleted]) VALUES (24, N'Asparagus smoothie', 0, 9, N'Good', 4, N'sinhto4.png', 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
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
