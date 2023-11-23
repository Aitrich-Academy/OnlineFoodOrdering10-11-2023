create database Restuarant

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
exec  category_insert 'Vegan','Plant based food','C:\Simna\asp.net project\Restuarant App\grilledasparagus.jpg'
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
CREATE procedure select_all_dishes
as
begin
select Id,Name,CategoryId,Description,Image,Price from Dishes where Status='A'
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
select Id,Name,Address,Phone,Email,Password from Users where Status='A' and Role='user'
end
GO
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
update users set status='A' where Id=1001
------------------------------------------------------------------
select *from orders