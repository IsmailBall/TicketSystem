USE [master]
GO

/****** Object:  Database [TicketSystem]    Script Date: 28.05.2022 23:43:22 ******/
CREATE DATABASE [TicketSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TicketSystem', FILENAME = N'/var/opt/mssql/data/TicketSystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TicketSystem_log', FILENAME = N'/var/opt/mssql/data/TicketSystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TicketSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [TicketSystem] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [TicketSystem] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [TicketSystem] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [TicketSystem] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [TicketSystem] SET ARITHABORT OFF 
GO

ALTER DATABASE [TicketSystem] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [TicketSystem] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [TicketSystem] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [TicketSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [TicketSystem] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [TicketSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [TicketSystem] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [TicketSystem] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [TicketSystem] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [TicketSystem] SET  ENABLE_BROKER 
GO

ALTER DATABASE [TicketSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [TicketSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [TicketSystem] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [TicketSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [TicketSystem] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [TicketSystem] SET READ_COMMITTED_SNAPSHOT ON 
GO

ALTER DATABASE [TicketSystem] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [TicketSystem] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [TicketSystem] SET  MULTI_USER 
GO

ALTER DATABASE [TicketSystem] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [TicketSystem] SET DB_CHAINING OFF 
GO

ALTER DATABASE [TicketSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [TicketSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [TicketSystem] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [TicketSystem] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [TicketSystem] SET QUERY_STORE = OFF
GO

ALTER DATABASE [TicketSystem] SET  READ_WRITE 
GO

