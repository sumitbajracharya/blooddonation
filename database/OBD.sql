USE [master]
GO
/****** Object:  Database [OBD]    Script Date: 06/18/2014 15:38:24 ******/
CREATE DATABASE [OBD] ON  PRIMARY 
( NAME = N'OBD', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\OBD.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'OBD_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\OBD_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [OBD] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OBD] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [OBD] SET ANSI_NULLS OFF
GO
ALTER DATABASE [OBD] SET ANSI_PADDING OFF
GO
ALTER DATABASE [OBD] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [OBD] SET ARITHABORT OFF
GO
ALTER DATABASE [OBD] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [OBD] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [OBD] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [OBD] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [OBD] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [OBD] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [OBD] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [OBD] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [OBD] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [OBD] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [OBD] SET  DISABLE_BROKER
GO
ALTER DATABASE [OBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [OBD] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [OBD] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [OBD] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [OBD] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [OBD] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [OBD] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [OBD] SET  READ_WRITE
GO
ALTER DATABASE [OBD] SET RECOVERY SIMPLE
GO
ALTER DATABASE [OBD] SET  MULTI_USER
GO
ALTER DATABASE [OBD] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [OBD] SET DB_CHAINING OFF
GO
USE [OBD]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 06/18/2014 15:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[StockID] [int] IDENTITY(1,1) NOT NULL,
	[CenterID] [int] NULL,
	[BloodGroupID] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED 
(
	[StockID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 06/18/2014 15:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 06/18/2014 15:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[EventTitle] [nvarchar](50) NULL,
	[Date] [date] NULL,
	[Time] [time](7) NULL,
	[Venue] [nvarchar](50) NULL,
	[PostedBy] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[Status] [bit] NULL,
	[Image] [nvarchar](50) NULL,
	[IssueDate] [date] NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmergencyRequest]    Script Date: 06/18/2014 15:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmergencyRequest](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nchar](50) NULL,
	[DistrictID] [int] NULL,
	[LocationID] [int] NULL,
	[BloodGroupID] [int] NULL,
	[MobileNumber] [int] NULL,
 CONSTRAINT [PK_EmergencyRequest] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonorsDetails]    Script Date: 06/18/2014 15:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonorsDetails](
	[DonarID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nchar](50) NOT NULL,
	[LastName] [nchar](20) NULL,
	[UserName] [nvarchar](20) NULL,
	[Password] [nchar](20) NULL,
	[Address] [nchar](100) NULL,
	[Location] [nchar](20) NULL,
	[DOB] [date] NULL,
	[BloodGroupID] [int] NULL,
	[Gender] [char](10) NULL,
	[LastDonationDate] [date] NULL,
	[BestTime] [nvarchar](50) NULL,
	[MobileNumber] [nchar](15) NULL,
	[PhoneNumber] [nchar](15) NULL,
	[Email] [nvarchar](30) NULL,
	[DonarCard] [nvarchar](50) NULL,
	[DonarStatus] [nchar](10) NULL,
	[AccountStatus] [nchar](10) NULL,
 CONSTRAINT [PK_DonorsDetails] PRIMARY KEY CLUSTERED 
(
	[DonarID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[District]    Script Date: 06/18/2014 15:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[DistrictID] [int] IDENTITY(1,1) NOT NULL,
	[DistrictName] [nchar](20) NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[DistrictID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BloodGroup]    Script Date: 06/18/2014 15:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BloodGroup](
	[BloodGroupID] [int] IDENTITY(1,1) NOT NULL,
	[BloodGroup] [nvarchar](5) NULL,
 CONSTRAINT [PK_BloodGroup] PRIMARY KEY CLUSTERED 
(
	[BloodGroupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BloodCenter]    Script Date: 06/18/2014 15:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BloodCenter](
	[CenterID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[LocationID] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[MapCoordinates] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
	[Details] [nvarchar](max) NULL,
 CONSTRAINT [PK_BloodCenter] PRIMARY KEY CLUSTERED 
(
	[CenterID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdvanceRequest]    Script Date: 06/18/2014 15:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdvanceRequest](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[SeekerName] [nvarchar](50) NULL,
	[MobileNumber] [nvarchar](20) NULL,
	[PatientName] [nchar](50) NULL,
	[LocationID] [int] NULL,
	[BloodGroupID] [int] NULL,
	[HospitalName] [nvarchar](50) NULL,
	[HospitalDocs] [nvarchar](50) NULL,
	[Date] [date] NULL,
	[time] [time](7) NULL,
 CONSTRAINT [PK_AdvanceRequest] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdminRoles]    Script Date: 06/18/2014 15:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminRoles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nchar](10) NULL,
 CONSTRAINT [PK_AdminRoles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 06/18/2014 15:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[LocationID] [int] NULL,
	[DOB] [date] NULL,
	[Gender] [char](10) NULL,
	[MobileNumber] [nvarchar](20) NULL,
	[PhoneNumber] [nchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[AccountStatus] [bit] NULL,
	[RoleID] [int] NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
