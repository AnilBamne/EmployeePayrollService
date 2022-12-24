--- Welcome to Employee payroll service ---
--- uc1 creating database ---
Create database PayrollService
--- Going to data base ---
use PayrollService
--- uc2 creating table ---
create table EmployeePayroll (
ID int identity(1,1) primary key,
Name varchar(200),
Salary float,
StartDate date
);
--- uc3 CURD operations, INSERT INTO ---
Insert Into EmployeePayroll values('Virat',65400,'2020-08-12');   --- ID is auto increamented
Insert Into EmployeePayroll values('Dhoni',89546,'1998-02-22'),('Sachin',79546,'1995-01-01'),('Rahul',82544,'2022-10-02')
--- uc4 Retriving all data ---
Select * from EmployeePayroll
--- uc5 Read particular employee data from table ---
select * from EmployeePayroll where Name='Rahul'
select * from EmployeePayroll where StartDate Between '2000-01-01' and GETDATE();
select * from EmployeePayroll where Name !='Rahul'
select * from EmployeePayroll where ID=2;
--- uc6 Alter table to add Gender column to the table ---
Alter Table EmployeePayroll add Gender char(1);
Update EmployeePayroll set Gender='M';
Insert Into EmployeePayroll values('Kalpana',29546,'2002-02-09','F'),('Snehal',32541,'2022-01-30','F'),('Kirthi',22587,'1999-11-01','F')
Select * from EmployeePayroll
--- uc7 sum, average, min, max quaries ---
select sum(Salary) from EmployeePayRoll 
select sum(Salary) as Totalsalary from EmployeePayRoll 
select sum(Salary) from EmployeePayRoll group by Gender;
select sum(Salary) as Totalsalary,Gender from EmployeePayRoll group by Gender;
select max(Salary) as Totalsalary,Gender from EmployeePayRoll group by Gender;
select * from EmployeePayRoll where Salary=(select Max(salary) as totalsalary from employeepayroll where gender='F' )
select * from EmployeePayRoll where Salary=(select Max(salary) as totalsalary from employeepayroll where gender='M' )
select * from EmployeePayRoll where Salary in (select Max(salary) as totalsalary from employeepayroll group by gender)
select name,Salary,Gender from EmployeePayRoll where salary in (select Max(salary) as totalsalary from employeepayroll group by gender)
select name,Salary,Gender from EmployeePayRoll where salary in (select Min(salary) as totalsalary from employeepayroll group by gender)
select avg(salary) as Totalsalary, gender from EmployeePayRoll group by gender
select avg(salary) as Totalsalary from EmployeePayRoll;
--- uc8 Adding Phone,Address and department ---
alter table EmployeePayroll add Phone bigint
alter table EmployeePayroll add Address varchar(250) Not Null default 'Banglore'
alter table EmployeePayroll add Department varchar(200) 
select * from EmployeePayroll

--- uc9 Add BasicPay,Deductiions,TaxablePay,IncomeTax and NetPay ---
--- renaming Salary column -> as Basic pay ---
Exec sp_rename 'EmployeePayroll.Salary','BasicPay','COLUMN';
alter table EmployeePayroll add Deductions float,TaxablePay float,IncomeTax float,NetPay float;

--- uc10 make terrisa as part of both Sales and marketing department ---
Insert Into EmployeePayroll values('Terissa',29546,'2001-02-03','F',783424,'Banglore','Sales',546,29000,2300,26700),('Terissa',29546,'2001-02-03','F',783424,'Banglore','Marketing',546,29000,2300,26700)


--- uc11 Implementing ER Diagram ---
--- creating a new database ---
CREATE DATABASE Payroll_Service2
USE Payroll_Service2

--CompanyTable--
Create Table Company
(
CompanyId int primary key identity(1,1),
CompanyName varchar(255)
)
Insert Into Company Values('TCS')
Insert Into Company Values('Wipro')
Insert Into Company Values('Infosys')
select * from Company

--EmployeeTable--
Create Table Employee
(
EmployeeId int primary key identity(101,1),
CompanyId int references Company(CompanyId),
EmployeeName varchar(255),
Gender char(1),
PhoneNo bigint,
EmployeeAddress varchar(255),
StartDate DATE,
)
Insert Into Employee values(1,'Oggy','M',987654321,'Delhi','2021/12/08')
Insert Into Employee values(2,'Terrisa','F',123456789,'Noida','2021/08/12')
Insert Into Employee values(3,'Jack','M',741852963,'Banglore','2021/03/10')
select * from Employee

--DepartmentTable--
Create Table Department
(
DeptId int primary key identity(1001,1),
DeptName varchar(255)
)
Insert Into Department values('Sales')
Insert Into Department values('HR')
Insert Into Department values('Finance')
select * from Department


