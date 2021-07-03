USE [master]
GO
/****** Object:  Database [QL_LapTop]    Script Date: 19/12/2020 1:43:17 AM ******/
CREATE DATABASE [QL_LapTop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_LapTop', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MAIVANCHANH\MSSQL\DATA\QL_LapTop.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QL_LapTop_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MAIVANCHANH\MSSQL\DATA\QL_LapTop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QL_LapTop] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_LapTop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_LapTop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_LapTop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_LapTop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_LapTop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_LapTop] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_LapTop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_LapTop] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QL_LapTop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_LapTop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_LapTop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_LapTop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_LapTop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_LapTop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_LapTop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_LapTop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_LapTop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QL_LapTop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_LapTop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_LapTop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_LapTop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_LapTop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_LapTop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_LapTop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_LapTop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_LapTop] SET  MULTI_USER 
GO
ALTER DATABASE [QL_LapTop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_LapTop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_LapTop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_LapTop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QL_LapTop]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 19/12/2020 1:43:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](10) NULL,
	[MatKhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 19/12/2020 1:43:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[IDDH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[Diakh] [nvarchar](50) NULL,
	[SDTKH] [nvarchar](50) NULL,
	[TenSP] [nvarchar](50) NULL,
	[Gia] [nvarchar](50) NULL,
	[TenNSX] [nvarchar](50) NULL,
	[TenSDTNSX] [nvarchar](50) NULL,
	[NgayDat] [nvarchar](50) NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[IDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 19/12/2020 1:43:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[IDKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Tuoi] [int] NULL,
	[GioiTinh] [nchar](10) NULL,
	[SDT] [nvarchar](10) NULL,
	[Gmail] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[IDKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Loai]    Script Date: 19/12/2020 1:43:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[IDL] [int] IDENTITY(1,1) NOT NULL,
	[Loai] [nvarchar](50) NULL,
 CONSTRAINT [PK_Loại] PRIMARY KEY CLUSTERED 
(
	[IDL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaSX]    Script Date: 19/12/2020 1:43:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSX](
	[IDNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NULL,
 CONSTRAINT [PK_NhaSX] PRIMARY KEY CLUSTERED 
(
	[IDNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 19/12/2020 1:43:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[Loai] [nvarchar](50) NULL,
	[NhaSX] [nvarchar](50) NULL,
	[NgayNhap] [nvarchar](50) NULL,
	[CauHinh] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([ID], [TaiKhoan], [MatKhau]) VALUES (1, N'0367979432', N'123')
INSERT [dbo].[Admin] ([ID], [TaiKhoan], [MatKhau]) VALUES (2, N'0961089798', N'123')
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([IDDH], [TenKH], [Diakh], [SDTKH], [TenSP], [Gia], [TenNSX], [TenSDTNSX], [NgayDat]) VALUES (1, N'Mai Văn Chánh', N'43 Nguyên Chí Thanh,Hà Nội', N'0367979432', N'Dell latitude 5440', N'15.000.000', N'CTy Phần Mền MVC', N'0367979432', N'12/10/2020')
INSERT [dbo].[DonHang] ([IDDH], [TenKH], [Diakh], [SDTKH], [TenSP], [Gia], [TenNSX], [TenSDTNSX], [NgayDat]) VALUES (2, N'Bùi Thành Được', N'52/68 Lê Hồng Phong TDM', N'0256369825', N'Dell latitude 5440', N'15.000.000', N'CTy Phần Mền MVC', N'0367979432', N'25/11/2020')
INSERT [dbo].[DonHang] ([IDDH], [TenKH], [Diakh], [SDTKH], [TenSP], [Gia], [TenNSX], [TenSDTNSX], [NgayDat]) VALUES (3, N'Bùi Hoàng Xuân', N'12 Lý Thái Tổ ,TP HCM', N'0258369145', N'HP inpresion14e', N'17.000.000', N'CTy Phần Mền MVC', N'0367979432', N'17/2/2020')
INSERT [dbo].[DonHang] ([IDDH], [TenKH], [Diakh], [SDTKH], [TenSP], [Gia], [TenNSX], [TenSDTNSX], [NgayDat]) VALUES (4, N'Nguyễn Minh Quân', N'09/7 Hoàng Hoa Thám TDM', N'0258874125', N'Dell inversion3254', N'7.000.000', N'CTy PC MVC', N'0589632584', N'26/5/2020')
INSERT [dbo].[DonHang] ([IDDH], [TenKH], [Diakh], [SDTKH], [TenSP], [Gia], [TenNSX], [TenSDTNSX], [NgayDat]) VALUES (5, N'Mai Văn Chánh', N'43 Nguyên Chí Thanh,Hà Nội', N'0367979432', N'Dell inversion3254', N'7.000.000', N'CTy PC MVC', N'0589632584', N'26/5/2020')
INSERT [dbo].[DonHang] ([IDDH], [TenKH], [Diakh], [SDTKH], [TenSP], [Gia], [TenNSX], [TenSDTNSX], [NgayDat]) VALUES (6, N'Bùi Hoàng Xuân', N'12 Lý Thái Tổ ,TP HCM', N'0258369145', N'Lenovo14 34', N'12.250.000', N'CTy Đúp Hồ', N'0258936954', N'25/8/2020')
SET IDENTITY_INSERT [dbo].[DonHang] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([IDKH], [TenKH], [DiaChi], [Tuoi], [GioiTinh], [SDT], [Gmail]) VALUES (1, N'Mai Văn Chánh', N'701B Khu chung cư hiệp thành III', 8, N'Nam       ', N'0961089798', N'maichanh31@gmail.com')
INSERT [dbo].[KhachHang] ([IDKH], [TenKH], [DiaChi], [Tuoi], [GioiTinh], [SDT], [Gmail]) VALUES (2, N'Bùi Hoàng Xuân ', N'12 Lý Thái Tổ ,TP HCM', 12, N'Nam       ', N'0258369145', N'xuanhoang@gmail.com')
INSERT [dbo].[KhachHang] ([IDKH], [TenKH], [DiaChi], [Tuoi], [GioiTinh], [SDT], [Gmail]) VALUES (3, N'Bùi Thành Được', N'52/68 Lê Hồng Phong TDM', 14, N'Nam       ', N'0256369825', N'Duocgg@gmail.com')
INSERT [dbo].[KhachHang] ([IDKH], [TenKH], [DiaChi], [Tuoi], [GioiTinh], [SDT], [Gmail]) VALUES (4, N'Nguyễn Minh Quân', N'09/7 Hoàng Hoa Thám TDM', 32, N'Nam       ', N'0258874125', N'QuanId@gmail.com')
INSERT [dbo].[KhachHang] ([IDKH], [TenKH], [DiaChi], [Tuoi], [GioiTinh], [SDT], [Gmail]) VALUES (5, N'Nguyễn Anh Hào', N'234/5 Phú Chánh Mi hung, TDM', 51, N'Nam       ', N'0258874126', N'Nguyenhao@gmail.com')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[Loai] ON 

INSERT [dbo].[Loai] ([IDL], [Loai]) VALUES (1, N'Dell')
INSERT [dbo].[Loai] ([IDL], [Loai]) VALUES (2, N'HP')
INSERT [dbo].[Loai] ([IDL], [Loai]) VALUES (3, N'Asus')
INSERT [dbo].[Loai] ([IDL], [Loai]) VALUES (4, N'Acer')
INSERT [dbo].[Loai] ([IDL], [Loai]) VALUES (5, N'Lenovo')
INSERT [dbo].[Loai] ([IDL], [Loai]) VALUES (6, N'MacBook')
INSERT [dbo].[Loai] ([IDL], [Loai]) VALUES (7, N'SamSum')
INSERT [dbo].[Loai] ([IDL], [Loai]) VALUES (8, N'ThinkPat')
SET IDENTITY_INSERT [dbo].[Loai] OFF
SET IDENTITY_INSERT [dbo].[NhaSX] ON 

INSERT [dbo].[NhaSX] ([IDNSX], [TenNSX], [DiaChi], [SDT]) VALUES (1, N'CTy Phần Mền MVC', N'43 Nguyễn Chí Thanh Hà Nội', N'0367979432')
INSERT [dbo].[NhaSX] ([IDNSX], [TenNSX], [DiaChi], [SDT]) VALUES (2, N'CTy PC MVC', N'123 Quốc Lộ 13A TDM', N'0589632584')
INSERT [dbo].[NhaSX] ([IDNSX], [TenNSX], [DiaChi], [SDT]) VALUES (3, N'CTy Mai Chánh', N'321/7 Phú Hòa TDM', N'0258478241')
INSERT [dbo].[NhaSX] ([IDNSX], [TenNSX], [DiaChi], [SDT]) VALUES (4, N'CTy Đúp Hồ', N'15/76 Zessin TDM', N'0258936954')
INSERT [dbo].[NhaSX] ([IDNSX], [TenNSX], [DiaChi], [SDT]) VALUES (5, N'CTy Thành', N'25/87 Dĩ An BD', N'0254853694')
INSERT [dbo].[NhaSX] ([IDNSX], [TenNSX], [DiaChi], [SDT]) VALUES (6, N'CTy Công', N'7A Phú Hòa TDM', N'0154847698')
SET IDENTITY_INSERT [dbo].[NhaSX] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([ID], [Ten], [Loai], [NhaSX], [NgayNhap], [CauHinh], [SoLuong], [GhiChu]) VALUES (1, N'Dell latitude 5440', N'Dell', N'CTy Phần Mền MVC', N'21/10/2020', N'i7 5430u ,Ram 8G, SSD 160G', 1, N'15.000.000')
INSERT [dbo].[SanPham] ([ID], [Ten], [Loai], [NhaSX], [NgayNhap], [CauHinh], [SoLuong], [GhiChu]) VALUES (2, N'HP inpresion', N'HP', N'CTy Phần Mền MVC', N'02/08/2020', N'i7 5430u ,Ram 8G, SSD 160G', 1, N'17.000.000')
INSERT [dbo].[SanPham] ([ID], [Ten], [Loai], [NhaSX], [NgayNhap], [CauHinh], [SoLuong], [GhiChu]) VALUES (3, N'Acer 1540ce', N'Acer', N'CTy Phần Mền MVC', N'23/09/2020', N'i5 5542e,Ram4G, SSD160G', 1, N'10.100.000')
INSERT [dbo].[SanPham] ([ID], [Ten], [Loai], [NhaSX], [NgayNhap], [CauHinh], [SoLuong], [GhiChu]) VALUES (4, N'Dell inversion3254', N'Dell', N'CTy PC MVC', N'01/12/2019', N'i5 5542e,Ram4G, SSD160G', 1, N'7.000.000')
INSERT [dbo].[SanPham] ([ID], [Ten], [Loai], [NhaSX], [NgayNhap], [CauHinh], [SoLuong], [GhiChu]) VALUES (5, N'Acer 1540ce', N'Acer', N'CTy Công', N'23/09/2020', N'i7 5430u ,Ram 8G, SSD 160G', 1, N'13.000.000')
INSERT [dbo].[SanPham] ([ID], [Ten], [Loai], [NhaSX], [NgayNhap], [CauHinh], [SoLuong], [GhiChu]) VALUES (6, N'Lenovo14 34', N'Lenovo', N'CTy Đúp Hồ', N'25/11/2020', N'i3 7800u,Ram4,SSD128G', 1, N'12.250.000')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
USE [master]
GO
ALTER DATABASE [QL_LapTop] SET  READ_WRITE 
GO
