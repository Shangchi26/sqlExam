if exists (select * from sys.databases where name = 'EmployeeDB')
drop database EmployeeDB
go
create database EmployeeDB
go
use EmployeeDB
go

create table Department(
	DepartID int primary key identity,
	DepartName varchar(50) not null,
	Description varchar(100) not null
)
go

create table Employee(
	EmpCode char(6) primary key,
	FirstName varchar(30) not null,
	LastName varchar(30) not null,
	Birthday smalldatetime not null,
	Gender bit default 1,
	Address varchar(100),
	DepartID int constraint fkEmploy foreign key (DepartID) references Department(DepartID),
	Salary money
)
go

insert into Department (DepartName, Description) values ('Depart01', 'UITeam')
insert into Department (DepartName, Description) values ('Depart02', 'DesignTeam')
insert into Department (DepartName, Description) values ('Depart03', 'DevelopTeam')

insert into Employee (EmpCode, FirstName, LastName, Birthday, gender, Address, DepartID, Salary)
			values ('NV01', 'Nguyen', 'Dao', '2004-12-02', 1, 'HaNoi', 1, 10000)
insert into Employee (EmpCode, FirstName, LastName, Birthday, gender, Address, DepartID, Salary)
			values ('NV02', 'Nguyen', 'Hien', '2004-08-12', 0, 'HaNoi', 2, 8000)
insert into Employee (EmpCode, FirstName, LastName, Birthday, gender, Address, DepartID, Salary)
			values ('NV03', 'Hoang', 'Hieu', '2004-10-20', 1, 'ThaiBinh', 3, 12000)
insert into Employee (EmpCode, FirstName, LastName, Birthday, gender, Address, DepartID, Salary)
			values ('NV04', 'Do', 'Bac', '2004-06-14', 1, 'ThaiBinh', 1, 9000)
insert into Employee (EmpCode, FirstName, LastName, Birthday, gender, Address, DepartID, Salary)
			values ('NV05', 'Dang', 'Thi', '1990-08-06', 0, 'HaNoi', 3, 20000)
insert into Employee (EmpCode, FirstName, LastName, Birthday, gender, Address, DepartID, Salary)
			values ('NV06', 'Tran', 'Sang', '2000-11-26', 1, 'HaTinh', 1, 10000)

update Employee set Salary = Salary + Salary * 0.1

alter table Employee add check (Salary > 0)


select * from Department
select * from Employee
go