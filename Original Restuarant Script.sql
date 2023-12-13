USE [master]
GO
/****** Object:  Database [Restuarant]    Script Date: 12/7/2023 1:54:58 PM ******/
CREATE DATABASE [Restuarant]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Restuarant', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Restuarant.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Restuarant_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Restuarant_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Restuarant] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Restuarant].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Restuarant] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Restuarant] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Restuarant] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Restuarant] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Restuarant] SET ARITHABORT OFF 
GO
ALTER DATABASE [Restuarant] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Restuarant] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Restuarant] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Restuarant] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Restuarant] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Restuarant] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Restuarant] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Restuarant] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Restuarant] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Restuarant] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Restuarant] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Restuarant] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Restuarant] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Restuarant] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Restuarant] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Restuarant] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Restuarant] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Restuarant] SET RECOVERY FULL 
GO
ALTER DATABASE [Restuarant] SET  MULTI_USER 
GO
ALTER DATABASE [Restuarant] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Restuarant] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Restuarant] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Restuarant] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Restuarant] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Restuarant] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Restuarant', N'ON'
GO
ALTER DATABASE [Restuarant] SET QUERY_STORE = ON
GO
ALTER DATABASE [Restuarant] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Restuarant]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/7/2023 1:54:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(2001,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](80) NULL,
	[Image] [varchar](80) NULL,
	[Status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dishes]    Script Date: 12/7/2023 1:54:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dishes](
	[Id] [int] IDENTITY(3001,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[CategoryId] [int] NULL,
	[Description] [varchar](80) NULL,
	[Image] [varchar](50) NULL,
	[Price] [decimal](10, 2) NULL,
	[Status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/7/2023 1:54:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(4001,1) NOT NULL,
	[UserId] [int] NULL,
	[DishId] [int] NULL,
	[Quantity] [varchar](50) NULL,
	[Price] [decimal](10, 2) NULL,
	[Status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/7/2023 1:54:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1001,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[Role] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Dishes]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([DishId])
REFERENCES [dbo].[Dishes] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
/****** Object:  StoredProcedure [dbo].[block_user_byId]    Script Date: 12/7/2023 1:54:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[block_user_byId]
( 
@Id as int
)
as
begin
begin transaction
declare @result as varchar(30)
update Users set Status='B' where Id=@Id
if (@@ERROR>0)
begin
set @result='Error'
rollback transaction
end
else
begin
set @result= 'Success'
end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[category_insert]    Script Date: 12/7/2023 1:54:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[category_insert]
(
@Name as varchar(50),
@Description as varchar(50),
@Image as varchar(50)
)
as
begin
begin transaction
declare @result as varchar(30), @exist as int
set @exist = (select count (*) from Categories where Name= @Name and Status ='A')

if (@exist>0)
begin 
set @result ='Already Exist'
end
else
begin
insert into Categories (Name,Description,Image, Status)
 values                (@Name,@Description,@Image,'A')
 if (@@error>0)
 begin
			set @result='Error'
			rollback transaction
		end
		else
		begin
			set @result='Success'
		end
	end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[delete_dishes]    Script Date: 12/7/2023 1:54:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[delete_dishes]
( 
@Id as int
)
as
begin
begin transaction
declare @result as varchar(30)
update Dishes set Status='D' where Id=@Id
if (@@ERROR>0)
begin
set @result='Error'
rollback transaction
end
else
begin
set @result= 'Success'
end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteUserAccount]    Script Date: 12/7/2023 1:54:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteUserAccount]
    @UserId INT
AS
BEGIN
    -- Delete user from the Users table where the UserId matches
    DELETE FROM Users
    WHERE Id = @UserId;

    -- Check if any rows were affected
    IF @@ROWCOUNT > 0
    BEGIN
        SELECT 'Success' AS Message; -- Return 'Success' if rows were affected
    END
    ELSE
    BEGIN
        SELECT 'Error' AS Message; -- Return 'Error' if no rows were affected
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[dishes_insert]    Script Date: 12/7/2023 1:54:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[dishes_insert]
(
@Name as varchar(50),
@CategoryId as Int,
@Description as varchar(50),
@Image as varchar(50),
@Price as DECIMAL(10, 2)
)
as
begin
begin transaction
declare @result as varchar(30), @exist as int
set @exist = (select count (*) from Dishes where Name= @Name and Status ='A')

if (@exist>0)
begin 
set @result ='Already Exist'
end
else
begin
insert into Dishes(Name,CategoryId,Description,Image,Price,Status)
 values                (@Name, @CategoryId,@Description,@Image,@Price,'A')
 if (@@error>0)
 begin
			set @result='Error'
			rollback transaction
		end
		else
		begin
			set @result='Success'
		end
	end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[dishes_updates]    Script Date: 12/7/2023 1:54:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[dishes_updates]
(
@Id as int,
@Name as varchar(50),
@CategoryId as Int,
@Description as varchar(50),
@Image as varchar(50),
@Price as DECIMAL(10, 2)
)
as
begin
begin transaction
declare @result as varchar(30)
update Dishes set Name=@Name,CategoryId=@CategoryId,Description=@Description,Image=@Image,Price=@Price where Id=@Id 
                             
if(@@ERROR>0)
begin
			set @result='Error'
			rollback transaction
		end
		else
		begin
			set @result='Success'
		end

commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[GetUserDetails]    Script Date: 12/7/2023 1:54:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUserDetails]
    @UserId INT
AS
BEGIN
    -- Selecting user details from the Users table where the user ID matches
    SELECT Id,Name,Address, Email, Phone, Password -- and other fields you need
    FROM Users
    WHERE Id = @UserId;
END;
GO
/****** Object:  StoredProcedure [dbo].[select_all_category]    Script Date: 12/7/2023 1:54:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[select_all_category]
as
begin
select Id,Name from Categories where Status='A'
end
GO
/****** Object:  StoredProcedure [dbo].[select_all_dishes]    Script Date: 12/7/2023 1:54:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[select_all_dishes]
as
begin
 SELECT d.Id,d.Name,c.Name as CategoryName,d.Description,d.Image,d.Price
						from Dishes d 
						JOIN Categories c ON d.CategoryId = c.Id where d.Status='A';
end
GO
/****** Object:  StoredProcedure [dbo].[select_all_imagesCat]    Script Date: 12/7/2023 1:54:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[select_all_imagesCat]
as
begin
select image from Categories where Status='A'
end
GO
/****** Object:  StoredProcedure [dbo].[select_all_orders]    Script Date: 12/7/2023 1:54:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[select_all_orders]
as
begin
 SELECT o.ID, u.Name as UserName, u.Phone,u.Email, d.Name as DishName,d.Image, o.Quantity, o.Price  
                       FROM Orders o  
                       JOIN Users u ON o.UserID = u.ID  
                       JOIN Dishes d ON o.DishID = d.ID;
end
GO
/****** Object:  StoredProcedure [dbo].[select_all_users]    Script Date: 12/7/2023 1:54:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[select_all_users]
as
begin
select Id,Name,Address,Phone,Email,Status from Users where  Role='user'
end
GO
/****** Object:  StoredProcedure [dbo].[select_dishes_byid]    Script Date: 12/7/2023 1:54:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[select_dishes_byid]
(@Id as int)
as
begin
select  Name,CategoryId,Description,Image,Price from Dishes where Id=@Id and Status='A'
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateUserProfile]    Script Date: 12/7/2023 1:54:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateUserProfile]
    @UserId INT,
    @Name VARCHAR(50),
    @Address VARCHAR(50),
    @Phone VARCHAR(50),
    @Email VARCHAR(50),
    @Password VARCHAR(50)
AS
BEGIN
    -- Update user details in the Users table where the UserId matches
    UPDATE Users
    SET Name = @Name,
        Address = @Address,
        Phone = @Phone,
        Email = @Email,
        Password = @Password
    WHERE Id = @UserId;

    -- Check if any rows were affected
    IF @@ROWCOUNT > 0
    BEGIN
        SELECT 'Success' AS Message; -- Return 'Success' if rows were affected
    END
    ELSE
    BEGIN
        SELECT 'Error' AS Message; -- Return 'Error' if no rows were affected
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[users_insert]    Script Date: 12/7/2023 1:54:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[users_insert]
(
@Name as varchar(50),
@Address as varchar(50),
@Phone as varchar(50),
@Email as varchar(50),
@Password as varchar(50),
@Role as varchar(20)
)
as
begin
begin transaction
declare @result as varchar(30), @exist as int
set @exist = (select count (*) from Users where Email= @Email and Status ='A' and Role='user')

if (@exist>0)
begin 
set @result ='Already Exist'
end
else
begin
insert into Users (Name,Address,Phone,Email,Password, Status,Role)
 values           (@Name,@Address,@Phone,@Email,@Password,'A',@Role)
 if (@@error>0)
 begin
			set @result='Error'
			rollback transaction
		end
		else
		begin
			set @result='Success'
		end
	end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[users_login]    Script Date: 12/7/2023 1:54:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE users_login
(
    @Email VARCHAR(50),
    @Password VARCHAR(50)
)
AS
BEGIN
    -- Check if a user with the given email and password exists
    IF EXISTS(SELECT 1 FROM Users WHERE Email = @Email AND Password = @Password AND Status = 'A')
    BEGIN
        -- If the user exists, select and return the role,id
        SELECT Role,Id FROM Users WHERE Email = @Email AND Password = @Password AND Status = 'A'
    END
    ELSE
    BEGIN
        -- If the user does not exist, return a message indicating invalid credentials
        SELECT 'invalid user' AS Role,0 as Id
    END
END
GO
END
GO
USE [master]
GO
ALTER DATABASE [Restuarant] SET  READ_WRITE 
GO
----------------------------------------------------------------------------------------------
-----------------------------------Select dishes by category id -------------------------------
create procedure select_all_dishesby_Category
(@CategoryId as int)
AS
begin
select  Name,CategoryId,Description,Image,Price from Dishes where CategoryId=@CategoryId and Status='A'
end
GO
 
execute  select_all_dishesby_Category @CategoryId = 2001;
--------------------------------------------------------------------------------------------------
--------------------------------------select image by dish id------------------------------------
create procedure select_dishImage_byId
(@Id as int)
as
begin
select  Image  from Dishes where Id=@Id and Status='A'
end
GO
-------------------------------------------------------------------------------------------------------------

