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