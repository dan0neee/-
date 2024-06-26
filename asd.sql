USE [master]
GO
/****** Object:  Database [Телефонный справочник]    Script Date: 15.05.2024 11:51:24 ******/
CREATE DATABASE [Телефонный справочник]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Телефонный справочник', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Телефонный справочник.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Телефонный справочник_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Телефонный справочник_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Телефонный справочник] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Телефонный справочник].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Телефонный справочник] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Телефонный справочник] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Телефонный справочник] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Телефонный справочник] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Телефонный справочник] SET ARITHABORT OFF 
GO
ALTER DATABASE [Телефонный справочник] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Телефонный справочник] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Телефонный справочник] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Телефонный справочник] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Телефонный справочник] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Телефонный справочник] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Телефонный справочник] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Телефонный справочник] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Телефонный справочник] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Телефонный справочник] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Телефонный справочник] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Телефонный справочник] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Телефонный справочник] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Телефонный справочник] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Телефонный справочник] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Телефонный справочник] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Телефонный справочник] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Телефонный справочник] SET RECOVERY FULL 
GO
ALTER DATABASE [Телефонный справочник] SET  MULTI_USER 
GO
ALTER DATABASE [Телефонный справочник] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Телефонный справочник] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Телефонный справочник] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Телефонный справочник] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Телефонный справочник] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Телефонный справочник] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Телефонный справочник', N'ON'
GO
ALTER DATABASE [Телефонный справочник] SET QUERY_STORE = ON
GO
ALTER DATABASE [Телефонный справочник] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Телефонный справочник]
GO
/****** Object:  Table [dbo].[Группы]    Script Date: 15.05.2024 11:51:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Группы](
	[id_группы] [int] NOT NULL,
	[категория] [nvarchar](50) NULL,
 CONSTRAINT [PK_Группы] PRIMARY KEY CLUSTERED 
(
	[id_группы] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Данные контакта]    Script Date: 15.05.2024 11:51:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Данные контакта](
	[id_контакта] [int] NOT NULL,
	[Фамилия] [nvarchar](50) NULL,
	[Имя] [nvarchar](50) NULL,
	[Отчество] [nvarchar](50) NULL,
	[телефон] [nvarchar](16) NULL,
	[e-mail] [nvarchar](150) NULL,
	[id_компании] [int] NULL,
	[id_должности] [int] NULL,
	[id_группы] [int] NULL,
	[дата_рождения] [date] NULL,
	[фото] [image] NULL,
 CONSTRAINT [PK_Данные контакта] PRIMARY KEY CLUSTERED 
(
	[id_контакта] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Должности]    Script Date: 15.05.2024 11:51:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Должности](
	[id_должности] [int] NOT NULL,
	[название] [nvarchar](50) NULL,
 CONSTRAINT [PK_Должности] PRIMARY KEY CLUSTERED 
(
	[id_должности] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Компания]    Script Date: 15.05.2024 11:51:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Компания](
	[id_компании] [int] NOT NULL,
	[Название] [nvarchar](50) NULL,
	[адрес] [nvarchar](150) NULL,
 CONSTRAINT [PK_Компания] PRIMARY KEY CLUSTERED 
(
	[id_компании] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Данные контакта]  WITH CHECK ADD  CONSTRAINT [FK_Данные контакта_Группы] FOREIGN KEY([id_группы])
REFERENCES [dbo].[Группы] ([id_группы])
GO
ALTER TABLE [dbo].[Данные контакта] CHECK CONSTRAINT [FK_Данные контакта_Группы]
GO
ALTER TABLE [dbo].[Данные контакта]  WITH CHECK ADD  CONSTRAINT [FK_Данные контакта_Должности] FOREIGN KEY([id_должности])
REFERENCES [dbo].[Должности] ([id_должности])
GO
ALTER TABLE [dbo].[Данные контакта] CHECK CONSTRAINT [FK_Данные контакта_Должности]
GO
ALTER TABLE [dbo].[Данные контакта]  WITH CHECK ADD  CONSTRAINT [FK_Данные контакта_Компания] FOREIGN KEY([id_компании])
REFERENCES [dbo].[Компания] ([id_компании])
GO
ALTER TABLE [dbo].[Данные контакта] CHECK CONSTRAINT [FK_Данные контакта_Компания]
GO
USE [master]
GO
ALTER DATABASE [Телефонный справочник] SET  READ_WRITE 
GO
