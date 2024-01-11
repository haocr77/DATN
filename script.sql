USE [master]
GO
/****** Object:  Database [DA_TraiCay]    Script Date: 2/5/2023 7:33:44 PM ******/
CREATE DATABASE [DA_TraiCay]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DA_TraiCay', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DA_TraiCay.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DA_TraiCay_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DA_TraiCay_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DA_TraiCay] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DA_TraiCay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DA_TraiCay] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DA_TraiCay] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DA_TraiCay] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DA_TraiCay] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DA_TraiCay] SET ARITHABORT OFF 
GO
ALTER DATABASE [DA_TraiCay] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DA_TraiCay] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DA_TraiCay] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DA_TraiCay] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DA_TraiCay] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DA_TraiCay] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DA_TraiCay] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DA_TraiCay] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DA_TraiCay] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DA_TraiCay] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DA_TraiCay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DA_TraiCay] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DA_TraiCay] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DA_TraiCay] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DA_TraiCay] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DA_TraiCay] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DA_TraiCay] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DA_TraiCay] SET RECOVERY FULL 
GO
ALTER DATABASE [DA_TraiCay] SET  MULTI_USER 
GO
ALTER DATABASE [DA_TraiCay] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DA_TraiCay] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DA_TraiCay] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DA_TraiCay] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DA_TraiCay] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DA_TraiCay] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DA_TraiCay] SET QUERY_STORE = OFF
GO
USE [DA_TraiCay]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2/5/2023 7:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2/5/2023 7:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Slug] [nvarchar](max) NULL,
	[ParentID] [int] NULL,
	[Orders] [int] NOT NULL,
	[MetaKey] [nvarchar](max) NULL,
	[MetaDesc] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Created_at] [datetime] NOT NULL,
	[Created_by] [int] NOT NULL,
	[Updated_at] [datetime] NOT NULL,
	[Updated_by] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configs]    Script Date: 2/5/2023 7:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Phone_1] [nvarchar](max) NULL,
	[Gmail] [nvarchar](max) NOT NULL,
	[APITalkTo] [nvarchar](max) NULL,
	[MessFacebook] [nvarchar](max) NULL,
	[Zalo] [nvarchar](max) NULL,
	[Analytic] [nvarchar](max) NULL,
	[WebMasterTool] [nvarchar](max) NULL,
	[Google_Maps] [nvarchar](max) NULL,
	[LogoIconWeb] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NULL,
	[LogoWeb] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Configs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 2/5/2023 7:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Flag] [int] NOT NULL,
	[Reply] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Created_at] [datetime] NOT NULL,
	[Updated_at] [datetime] NOT NULL,
	[Updated_by] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 2/5/2023 7:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[URL] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[Type] [nvarchar](max) NULL,
	[Created_At] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Event] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupUser]    Script Date: 2/5/2023 7:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Level] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Created_at] [datetime] NOT NULL,
	[Created_by] [int] NOT NULL,
	[Updated_at] [datetime] NOT NULL,
	[Updated_by] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.GroupUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Link]    Script Date: 2/5/2023 7:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Link](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[TableId] [int] NULL,
 CONSTRAINT [PK_dbo.Link] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 2/5/2023 7:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NULL,
	[TableID] [int] NULL,
	[ParentID] [int] NULL,
	[Orders] [int] NOT NULL,
	[Positon] [nvarchar](max) NOT NULL,
	[Status] [int] NOT NULL,
	[Created_at] [datetime] NOT NULL,
	[Created_by] [int] NOT NULL,
	[Updated_at] [datetime] NOT NULL,
	[Updated_by] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 2/5/2023 7:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[UserID] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ExportDate] [datetime] NULL,
	[DeliveryAddress] [nvarchar](max) NULL,
	[DeliveryName] [nvarchar](max) NULL,
	[DeliveryPhone] [nvarchar](max) NULL,
	[DeliveryEmail] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[IsPayment] [bit] NOT NULL,
	[Trash] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
 CONSTRAINT [PK_dbo.Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 2/5/2023 7:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [float] NOT NULL,
 CONSTRAINT [PK_dbo.OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 2/5/2023 7:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TopicID] [int] NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[Position] [nvarchar](max) NULL,
	[MetaKey] [nvarchar](max) NULL,
	[MetaDesc] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Created_at] [datetime] NOT NULL,
	[Created_by] [int] NOT NULL,
	[Updated_at] [datetime] NOT NULL,
	[Updated_by] [int] NOT NULL,
	[Location] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Post] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/5/2023 7:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[CateID] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[ImageList] [nvarchar](max) NULL,
	[NewPromotion] [nvarchar](max) NULL,
	[Installment] [int] NOT NULL,
	[Discount] [int] NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Specification] [nvarchar](max) NOT NULL,
	[OwnerId] [int] NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProPrice] [float] NOT NULL,
	[MetaKey] [nvarchar](max) NULL,
	[MetaDesc] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Created_at] [datetime] NOT NULL,
	[Created_by] [int] NOT NULL,
	[Updated_at] [datetime] NOT NULL,
	[Updated_by] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductOwner]    Script Date: 2/5/2023 7:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductOwner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Longiude] [nvarchar](max) NULL,
	[Latitude] [nvarchar](max) NULL,
	[Created_at] [datetime] NOT NULL,
	[Created_by] [int] NOT NULL,
	[Updated_at] [datetime] NOT NULL,
	[Updated_by] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProductOwner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 2/5/2023 7:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NULL,
	[Position] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Orders] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Created_at] [datetime] NOT NULL,
	[Created_by] [int] NOT NULL,
	[Updated_at] [datetime] NOT NULL,
	[Updated_by] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Slider] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 2/5/2023 7:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Slug] [nvarchar](max) NULL,
	[ParentID] [int] NULL,
	[Order] [int] NOT NULL,
	[MetaKey] [nvarchar](max) NULL,
	[MetaDesc] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Created_at] [datetime] NOT NULL,
	[Created_by] [int] NOT NULL,
	[Updated_at] [datetime] NOT NULL,
	[Updated_by] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Topic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2/5/2023 7:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Gender] [int] NOT NULL,
	[Phone] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Access] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Created_at] [datetime] NOT NULL,
	[Created_by] [int] NOT NULL,
	[Updated_at] [datetime] NOT NULL,
	[Updated_by] [int] NOT NULL,
	[PayTotal] [int] NOT NULL,
 CONSTRAINT [PK_dbo.User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGoogle]    Script Date: 2/5/2023 7:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGoogle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Gender] [int] NOT NULL,
	[Phone] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Access] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Created_at] [datetime] NOT NULL,
	[Created_by] [int] NOT NULL,
	[Updated_at] [datetime] NOT NULL,
	[Updated_by] [int] NOT NULL,
	[EmailID] [nvarchar](max) NULL,
	[IsEmailVerified] [bit] NOT NULL,
	[ActivationCode] [uniqueidentifier] NOT NULL,
	[ResetPasswordCode] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[PayTotal] [int] NOT NULL,
 CONSTRAINT [PK_dbo.UserGoogle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 2/5/2023 7:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Discount] [int] NULL,
	[Status] [int] NULL,
	[Quantity] [int] NULL,
	[DateExpire] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Voucher] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserGoogle] ADD  DEFAULT ((0)) FOR [GroupId]
GO
ALTER TABLE [dbo].[UserGoogle] ADD  DEFAULT ((0)) FOR [PayTotal]
GO
USE [master]
GO
ALTER DATABASE [DA_TraiCay] SET  READ_WRITE 
GO
