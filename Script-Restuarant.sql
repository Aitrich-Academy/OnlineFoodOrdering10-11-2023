


create database Restuarantonline

----------User table-----------------------------------
create table Users(
Id int  Primary key IDENTITY(1001,1),
Name varchar(50),
Address varchar(50),
Phone varchar(50),
Email varchar(50),
Password varchar(50),
Status varchar(50)  );


----------Categories table-----------------------------------

create table Categories(
Id int Primary key IDENTITY(2001,1),
Name varchar(50),
Description varchar(80),
Image varchar(80),
Status varchar(50) )

----------Dishes table-----------------------------------

CREATE TABLE Dishes (
    Id INT IDENTITY(3001, 1) PRIMARY KEY,
    Name varchar(50),
    CategoryId INT REFERENCES Categories(Id),
    Description varchar(80),
    Image varchar(50),
    Price DECIMAL(10, 2),
    Status varchar(50),
);

----------Orders table-----------------------------------

Create table Orders(
    Id INT IDENTITY(4001, 1) PRIMARY KEY,
    UserId INT REFERENCES Users(Id),
    DishId INT  REFERENCES Dishes(Id),
    Quantity varchar(50),
    Price DECIMAL(10, 2),
    Status VARCHAR(50)
);

-----------------------
alter table users add  Role varchar(20);
select * from users
insert into Users values('admin','Location',9874563210,'admin@gmail.com','Admin@123','A','Admin');

----------------------------Stored Procedure :- insert user--------------------

CREATE procedure users_insert
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
----------------------------Stored Procedure :- User Login--------------------





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

select * from users;




EXEC users_login @Email = 'afi@gmail.com', @Password = 'ASAmari55##123';
------------------------------GetUserDetails-----------------------------
CREATE PROCEDURE GetUserDetails
    @UserId INT
AS
BEGIN
    -- Selecting user details from the Users table where the user ID matches
    SELECT Id,Name,Address, Email, Phone, Password -- and other fields you need
    FROM Users
    WHERE Id = @UserId;
END;

execute  GetUserDetails @UserId = '1008';



-------------------------Update User Details -------------------------------------
CREATE PROCEDURE UpdateUserProfile
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
-------------------------------Delete user Account --------------------------
CREATE PROCEDURE DeleteUserAccount
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

---------------------------------------------------------------------------------
select * from Users
----------------------------Stored Procedure :- insert category--------------------
CREATE procedure category_insert
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
-----------------------------------------------------------


select * from Categories
----------------------------Stored Procedure :- insert Dishes--------------------
CREATE procedure dishes_insert
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

----------------------Stored Procedure :- select all category--------------------

create proc select_all_category
as
begin
select Id,Name from Categories where Status='A'
end
GO
--------------------------------------------------------------------------------------
exec select_all_category

select * from Dishes

-----------------------------------------Stored Procedure : select all dishes----------
CREATE procedure [dbo].[select_all_dishes]
as
begin
 SELECT d.Id,d.Name,c.Name as CategoryName,d.Description,d.Image,d.Price
						from Dishes d 
						JOIN Categories c ON d.CategoryId = c.Id where d.Status='A';
end
GO
-----------------------------------------------------
exec select_all_dishes
select * from Dishes

select * from Categories 


------------------------stored procedure:select dishes by id--------------------
CREATE procedure select_dishes_byid
(@Id as int)
as
begin
select  Name,CategoryId,Description,Image,Price from Dishes where Id=@Id and Status='A'
end
GO
-------------------------stored procedure : update dishes------------------------
CREATE procedure dishes_updates
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

------------------------------stored p[rocedure: delete dishes---------------------------------------
create procedure delete_dishes
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
------------------------------stored proceure:- select all users----------------------------
CREATE procedure select_all_users
as
begin
select Id,Name,Address,Phone,Email,Status from Users where  Role='user'
end
GO
-----------------------------------------------------------------------------------
drop proc select_all_users
exec select_all_users
update users set status='A' where Id=1003;
select * from Users
----------------------stored procedure : block users-------------------------------
create procedure block_user_byId
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
---------------------------------------------------------------
select * from Users
update users set status='A' where Id=1003
------------------------------------------------------------------
select *from orders
---------------------------------Stored Procedure: select_all_orders details-------------------
CREATE procedure select_all_orders
as
begin
 SELECT o.ID, u.Name as UserName, u.Phone,u.Email, d.Name as DishName,d.Image, o.Quantity, o.Price  
                       FROM Orders o  
                       JOIN Users u ON o.UserID = u.ID  
                       JOIN Dishes d ON o.DishID = d.ID;
end
GO
------------------------------------------------------------

exec  select_all_orders
-----------------------join order ----------------------------------
 SELECT o.ID, u.Name, u.Phone, d.Name,d.Image, o.Quantity, o.Price  
                       FROM Orders o  
                       JOIN Users u ON o.UserID = u.ID  
                       JOIN Dishes d ON o.DishID = d.ID;

--------------------------------------------------------------------------
select * from Orders
select * from Dishes
select * from Users
insert into Orders values(1001,3010,2,180,'A');