--- Welcome to Employee payroll service ---
Create database PayrollService
--- Going to data base ---
use PayrollService
create table EmployeePayroll (
ID int identity(1,1) primary key,
Name varchar(200),
Salary float,
StartDate date
);