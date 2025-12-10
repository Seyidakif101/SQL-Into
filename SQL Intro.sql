CREATE DATABASE MPA101DB

USE MPA101DB

CREATE TABLE Departments(
Id int primary key identity,
[Name] nvarchar(255) unique not null
)

CREATE TABLE Employees(
Id int primary key identity,
Fullname nvarchar(255) not null,
Age int check(Age>0) not null,
Email nvarchar(255) unique not null,
Salary decimal(8,2) check(300<Salary and Salary<2000) not null
)

INSERT INTO Employees(Fullname,Age,Email,Salary)
values
('Seyidakif Azimov',19,'Azimovseyidakif@gmail.com',455),
('Nihad Alizade',19,'NihadAlizade@gmail.com',905),
('Gulmirze Aliyev',19,'Aliyevgulmirze@gmail.com',855),
('Farid Gasimov',19,'Gasimovfarid@gmail.com',455)

Select*from Employees

update Employees set Salary=1000
where Id=1