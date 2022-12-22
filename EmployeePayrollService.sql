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
