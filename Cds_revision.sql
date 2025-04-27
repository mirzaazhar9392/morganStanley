
==========================================CDS SQL=======================================================
create database cds_revision

use cds_revision

--SQL -(Struture query Language)
--CLASS-1
--Data
--Collection of meaniful Information
--or
--Collection of record information.

--Database
--if we are storing data at one place then it is called as Database.
--for ex: Excel, word ,text file etc.

--Disadvantages
--1.Data Accessibility is slow and Time consuming.
--2.It will Store very less amount of data
--3.No Relationship between two files.

--RDBMS(Relational Data Base Management System) - (Database)
--It is used to store structure data or it is collection of table related information.
--Structure data is nothing but data which store in rows and columns.
--Whatever the data we are storing inside RDBMS, to extract data we have simple langugae called SQL.

--SQL
--Structure query language
--it will be simple like english statements.
--SQL is not a case sensitive.

--RDBMS
--1.SQL Server Managment Studio(SSMS)
--2.SQL developer
--3.TOAD
--4.POSTGREY SQL
--5.DB2
--6.Teradata

--Their are two types databases
--1.System defined database
--2.User defined database (DATA Snapshots)

--1.System defined database
--1.master
--2.model
--3.msdb
--4.tempdb

--2.User defined database (DATA Snapshots)
--How to create user defined database
--synatx: CREATE DATABASE USER_DEFINED_NAME
 CREATE DATABASE CDS_TESTING10;
--or
 create database cds_testing10

--SQL is not a case sensitive language
--For ex: CREATE and create will be same
--How to navigate to user defined Database?
--synatx: USE USER_DEFINED_DATABASE_NAME CDS Code Solution
use CDS_TESTING10

--Color format
--------------
--blue - system defined keyword
--for ex: create,use,select etc
--Pink - System defined functions
--sum, max,min,avg etc 

--comment
----------
--single line comment
--Multiple line comment
--single line comment
--by using symbol double hy-fun (--)
--Multiple line comment
--to write multiple line comment we can use (/* lines)
--/* lines */
/* SQL is not case sensitive
to process any data from RDBMS we need SQL
create database cds_testing10*/

--DATA TYPES - Type of data/value of an object hold.
--1.String or Charcter datatype
--2.Numeric datatype
--3.Approximate datatype
--4.Date and time datatype - 05/09/2023,2023-09-17

--1.String or charecter data type
--1.CHAR
--It will hold value like A-Z,a-z,0-9 and all the special charecters(@,#,$,%)
--It is static memory allocation and its maximum size is 8000 charecters.
--For ex: FirstName char(50)
--If we are storing name called Raghavan
--It will occupy 8 blocks and remaing 42 blocks are wastage , it will process all the 50 blocks of memory

declare @name char(41)
set @name='azhar mirza'
print @name
print datalength(@name)
print len(@name)

--Datalength is SQL Server function used to define datatype size.
--len is SQL server function which is used to measure string length.
--In SQL strings are always enclosed with single quotes ('')

--2.VARCHAR
--It will hold value like A-Z,a-z,0-9 and all thge special charecters(@,#,$,%)
--It is dynamic memory allocation and its maximum size is 8000 charecters.
--For ex: FirstName varchar(50)
--If we are storing name called Raghavan
--It will occupy 8 blocks and it will release remaing 42 blocks. CDS Code Solution
declare @Name varchar(50)
set @Name = 'AMIT'
print @name
print datalength(@Name)
print len(@Name) 

--3.nchar
--Static Memory allocation and its size is 4000 charecters.
--It will occupy 2blocks of memory to store 1 charcter.
--It will allow all the reginal or world wide langugaes we can store in it.
declare @val nchar(4)
set @val = 'AMAN'
print(@val)
print datalength(@val)
print len(@val)

--4.nvarchar
--Dynamic Memory allocation and its size is 4000 charecters.
--It will occupy 2blocks of memory to store 1 charcter.
--It will allow all the regional or world wide langugaes we can store in it.
declare @val1 nvarchar(40)
set @val1 = 'Sit'
print(@val1)
print datalength(@val1)

--2.Numeric data type
--1.BIT
--It store value 0(False) or 1(True).
--for ex:
declare @user_name bit
SET @user_name = 'FALSE'
print (@user_name)

--2.TINYINT
--It will store value ranging from 0 t0 255
declare @num tinyint
set @num = 255
print @num

--3.smallint
--It store value ranging from -32768 to 32767.
--for ex:
declare @num1 smallint
set @num1 = 32767
print @num1

--4.int
--it will store value ranging from -2147483648 to 2147483647
--for ex:
declare @num2 int
set @num2 = '2147483647 CDS Code Solution'
print @num2

--5.bigint
--It will store value beyond an integer value
--for ex:
declare @num3 bigint
set @num3 = 2147483648
print @num3

--6.decimal
--It will store fixed point number.
--for ex:
declare @num4 decimal
set @num4 = 5612345.12345
print @num4

--getdate() - This sql server function will give current date and time of server
select GETDATE()

--3.Date and time data types
--1.DATE
--This data type allow us to insert date in diffrent formats
--YYYY-DD-MM
--YYYY-MM-DD
--MM-DD-YYYY
declare @todays_date date
set @todays_date = GETDATE()
print (@todays_date)

declare @todays date
set @todays = '2023-09-13'
print (@todays)

--2.time
--This data type is used to store or display time in format like HH:MM:SS.MIS.
--For ex:
declare @presenttime time
set @presenttime = GETDATE()
print @presenttime
select GETDATE()

--3.datetime
--it will us to store both date and time.
declare @presentdatetime datetime
set @presentdatetime = GETDATE()
print @presentdatetime

--4.approximate numeric data type

--1.Float - 8 bytes
--This data type supports to store floating point numbers in the range -1.8E to
38 to 1.8E to 37.
--for ex: 123456789.12345678
declare @f1 float
set @f1 = 21345678907654325123456123456782345677 CDS Code Solution
print @f1

--2.Real - 4bytes
--This data type is used to store floating point number in the range -3.40 E to
38 to +3.40E to 37.
declare @f2 real
set @f2 = 21345678907654325123456123456782345677
print @f2

--SQL Clauses
--SQL Clauses are used to filter data by providing conditions
--SQL Clauses are used for filtering purpose
--Diffrent types of clauses
--1.WHERE
--2.ORDER BY
--3.GROUP BY
--4.HAVING

--SQL Operators
--1.Comparision
--2.Logical
--3.Arithmatic
--4.IN and NOT IN
--5.BETWEEN and NOT BETWEEN
--6.LIKE 

--SQL Operators
--1.Comparision
--It is used to compare the condition provided into where clause.
--We can use only one condition along with Comparision operator.
-- = - equal to
-- > - greater than
-- < - Less than
-- >= - greater than equal to
-- <= - less than equal to
-- <> or != - Not equal to
--SQL Clauses
--1.WHERE
--If we want to extract some particular redords from table based on condition then we can use SQL oprators
--along with SQL clauses
--synatx:
--SELECT * FROM TABLE_NAME WHERE Col_NAME SQL OPERATOR(ANY) Value;
create table employee (Employee_ID int, 
Employee_Name varchar(50),
Employee_City varchar(50),
Employee_Salary int,
Employee_DOJ date)
select GETDATE() +700 -- it will give date after 700 days
insert into employee values (1,'Kiran','Pune',7600,GETDATE()-700),
(2,'Amar','Ranchi',7000,GETDATE()-800),(3,'Shital','Indore',8000,GETDATE()-920),
(4,'Vikas','Indore',2000,GETDATE()-1700),(5,'Arun','Jaipur',6500,GETDATE()-745),
(6,'Shanti','Delhi',5000,GETDATE()-890),(7,'Balaji','Kota',9200,GETDATE()-345),
(8,'Suman','Chennai',3000,GETDATE()-500),(9,'Chetan','Mumbai',4500,GETDATE()-
567)
,(10,'Aman','Kochi',3500,GETDATE()-400)
select * from employee
--if we wanty to extract one record from table
select * from employee where Employee_ID =1
--display only those employee whose salary is greater than 5000
select * from employee where Employee_Salary > 5000
--display only those employee whose salary is less than 6000
select * from employee where Employee_Salary < 6000
--display only those employee whose salary is greater than equal to 5000
select * from employee where Employee_Salary >=5000
--display only those employee whose salary is less than equal to 6000
select * from employee where Employee_Salary <= 6000
--we want to display only those employees which is not belong to delhi.
select * from employee where Employee_City <> 'Delhi'
--or
select * from employee where Employee_City != 'Delhi'

--2.Order by
--This clause is basically used to display column content either in ascending order or descending order.
--Suppose after using ORDER BY clause if we have not mentioned anything then by default it is ascending.
--It will use notation ASC- for Ascending and DESC - for Descending.
--syntax:
--select * from Table_name ORDER BY COL_NAME ASC|DESC
--Display employee salary from highest to lowest
select * from employee order by Employee_Salary DESC
--Display employee salary from lowest to highest.
select * from employee order by Employee_Salary
select * from employee order by Employee_Salary ASC
--Display employee who has joined the organization first
select * from employee order by Employee_DOJ ASC
--display city wise employee salary and city starts from A-Z
select * from employee order by Employee_City asc,Employee_Salary asc
insert into employee values (11,'Akash','Chennai',2000,'2023-05-04')

--2.Logical Operators CDS Code Solution
--It is used to compare two inputs/condition logically based upon the operation specified in SQL clauses.
--Types of Logical Operators
--1.AND
--2.OR
--3.NOT
--1.AND
--This operator is used to comapre two condition,row-by-row basis.
--If we provide two condition it will verify both condition should match in same
--row then only it will extract data.
--It is just like multiplication operation.
--AND operation
--Condition1 Condition2 Output
--Match Match True or it will show result
--Match Unmatch False or Balnk Result
--Unamtch Match False or Blank Result
--Unmatch Unmatch False or Blank Result
--synatx:
--select * from table_name where condition1 and Condition2
--display only those employees whose salary is 5000 and belongs to Delhi city.
select * from employee where Employee_Salary = 5000 and Employee_City = 'Delhi'
select * from employee where Employee_Salary > 5000 and Employee_City = 'Ranchi'
--Display only those employee whose salary is less than 4000 and city is pune.
select * from employee where Employee_Salary < 4000 and Employee_City = 'Pune'
select * from employee where Employee_ID = 1 and Employee_ID = 4
--2.OR
--It is used to compare two inputs/conditions logically.
--it will compare all the condition row-wise as well as columns-wise if it matches then it will extract that data.
--It will act like addition.
--OR Operator
--Condition1 Condition2 Output
--Match Match True or it will show result of condition1 and condition2 both
--Match Unmatch True or it will show condition1 match data
--Unamtch Match True or it will show condition2 match data
--Unmatch Unmatch False or Blank Result
--synatx:
--select * from Table_Name where conditio1 OR condition2
select * from employee
--display only those employees whose salary is 5000 and belongs to Delhi city.
select * from employee where Employee_Salary = 5000 or Employee_City = 'Delhi'
select * from employee where Employee_Salary > 5000 Or Employee_City = 'Indore'
--Display only those employee whose salary is less than 4000 and city is pune.
select * from employee where Employee_Salary < 4000 and Employee_City = 'Pune'
 
--3.Not
--It will perform always an opposite operation.
--Returns TRUE if the following condition is false. CDS Code Solution
--Input Output
--TRUE FALSE
--FALSE TRUE
--synatx:
--select * from Table_Name where NOT condition
--display only those employees whose salary is not equal to 5000.
select * from employee where not Employee_Salary = 5000

--3.Arithmatic operator
--These operators are used to perform arithmatic operation
--such as addition(+),substraction(-),multiplication(*) and division(/).

--SQL Alias
--By using SQL alis we can give any name as per our choice to new column.
--syntax:
--1. Alias_ColumnName = existing_column
--2. Existing_column_name AS user_Defined_column
--3. Existing_column_name user_Defined_column
select City=Employee_City from employee e1
select Employee_City as City from employee
select Employee_City City from employee
select * from employee
--Addition
--increase salary of each employee by 1000
select *, INC_salary=Employee_Salary + 1000 from employee
select *,Employee_Salary + 1000 as INC_salary from employee
select *,Employee_Salary + 1000 INC_salary from employee
--Substraction
select * from employee
--Reduce salary of those employees whose salary is grater than 5000
select *, REDUCED_SALARY = employee_salary - 1000 from employee where
employee_salary > 5000
--Multiplication
--calculate yearly package of each employee
select *, YEARLY_PACKAGE = EMPLOYEE_SALARY *12 from employee
--Increase salary employee by 10% whose salry is less than 5000
select *,INC_SALARY = EMPLOYEE_SALARY + (EMPLOYEE_SALARY*0.1) from employee
where employee_salary < 5000
--Division
--Calculate per day salary of employee
select *, PER_DAY= EMPLOYEE_SALARY/30 from employee
--Modulus (%)
--Display only those employee whose empid is even
select * from employee where Employee_ID %2 =0
--display only those employee whose empid is odd CDS Code Solution
select * from employee where Employee_ID %2 =1
--Increase salary by 20% of those employees whose employee id is even?
select *,INC_SALARY = EMPLOYEE_SALARY+(EMPLOYEE_SALARY * 0.2) from employee
where employee_ID %2 =0
--IN and NOT IN
--By using IN Operator we can access or navigate to specific values from table.
--NOT IN operator will perform exactly reverse operation as IN opration.
--synatx:
--select * from Table_Name where Col_name IN (Value1,Value2....Valuen)
--select * from Table_Name where Col_name NOT IN (Value1,Value2....Valuen)
select * from employee where employee_id = 1
--we want to extract employee id 1,6 and 11 from employee table
select * from employee where Employee_ID IN (1,6,11)
--Display only those employee who belongs to city Pune,Ranchi and Chennai.
select * from employee where Employee_City IN ('Pune','Ranchi','Chennai')

--NOT IN
--we want to extract employee whose id is not 1,6 and 11
select * from employee where Employee_ID NOT IN (1,6,11)
--Display those employees who does not belongs to city Pune,Ranchi and Chennai.
select * from employee where Employee_City NOT IN ('Pune','Ranchi','Chennai')
--BETWEEN and NOT BETWEEN
--This operator will use to display the values or records for a particular range.
--We can display particular range by specifying along with AND operator
--Not Between operator will perform exactly opposite of between operator.
--Synatx:
--select * from Table_Name where Col_name BETWEEN Value1 AND Value2
--select * from Table_Name where Col_name NOT BETWEEN Value1 AND Value2
--Display only those employees who are ranging from employee id 4 to 7.
select * from employee where EMPLOYEE_ID between 4 and 7
--Display only those employee whose name ranging from alphabet B to S
--it will start Ba till only S but it will not display Sa
select * from employee where EMPLOYEE_NAME between 'B' and 'S'

--Like***
--LIKE operator will allow you to search pattern from given string or value or number.
--Like operator mostly used along with strings but we acn use with any value.
--synatx:
--select * from Table_Name where COL_NAME LIKE Pattern;
--LIKE operator used along with wildcards for searching a pattern.
--1.% - It represents one or multiple characters.
--2.'_' - It represents one or single character/ it will substitute exactly one character.
--3.'[Charlist]' - we can use multiple cahacters to search a pattern.
-- '[Charlist]%' - it will display any single character from the list at start.
-- '%[Charlist]' - it will display any single character from the list at end. CDS Code Solution
-- '%[Charlist]%' - it will display any single character from the list start to end.
--Seraching process
--'A%' - It will display all the strings which starts with A alphabet.
--'%A' - It will display all the strings which ends with A alphabet.
--'%A%'- It will display all the strings which conatins A aplhabet in it.
--Display only those names whose name start with A.
select * from employee where Employee_Name like 'A%'
--Display only those names whose name ends with l.
select * from employee where Employee_Name like '%l'
--Display only those names whose name contain alphabet u anywhere.
select * from employee where Employee_Name like '%u%'
--Display the name whose second character starts with 'M'
select * from employee where Employee_Name like '_M%'
--Display those name pattern whose second last charecter is 'A'
select * from employee where Employee_Name like '%A_'
--Display only those name which starts with K and end with N.
select * from employee where Employee_Name like 'K%N'

--sumit_Bhosale - '%[_]%'
--Diaplay those names whose name start with S and ends with l.
select * from employee where Employee_Name like 'S%l'
--Diaplay those names whose name start with S,C,K.
select * from employee where Employee_Name like '[SCK]%'
--Diaplay those names whose name ends with S,C,K.
select * from employee where Employee_Name like '%[SCK]'
--Diaplay those names whose name does not start with S,C,K.
select * from employee where Employee_Name like '[^SCK]%'
--Display only those name whose ranging from B-K
select * from employee where Employee_Name like '[B-K]%'
--if we found any special symabol in string and we want to display those strings then
select * from employee where Employee_Name like '%[@]%'
--for example : praveen@patil
insert into employee values (12,'Praveen@Patil','Manali',8300,GETDATE())
insert into employee values (13,'Sumit_Bhosale','Satara',8700,GETDATE()-100)
--Q.Suppose in my table if i have name like SUMIT_BHOSALE then how will you extract those records?
select * from employee where Employee_Name like '%[_]%'
--Display only those employee whos salary in range of 8000 to 8999
select * from employee where Employee_Salary like '8%'
--Display those employees who have joinied in the year 2023.
select * from employee where Employee_DOJ like '2023%'

--SQL Aggregate functions 

--SQL aggreagte functions returns a single value, Calculated from either table column or multiple values.
--in SQL we have multiple aggregate functions
--1.AVG()
--2.COUNT()
--3.MIN()
--4.MAX()
--5.SUM()

--1.AVG()
--AVG() Function return an avarage value from column or from multiple values.
select * from employee
select AVG(Employee_Name) from employee
--exception/error:Operand data type varchar is invalid for avg operator.
--calculate avg salary of an employee.
select AVG(Employee_Salary) as AVGSAL from employee
--Avg salary of an employee who have joined in the year 2023.
select AVG(Employee_Salary) as Total_Avg_Sal from employee where Employee_DOJ
like '2023%'

--2.COUNT()
--COUNT() function returna the no of value and no of records from column or table.
--Count() function will always requires 1 arguments in it. select * from employee
--Count the number of employees from table
select COUNT(*) as Noofrecords from employee
--Tricky and normal operations of count
select COUNT(*) -- output = 1
select COUNT() -- error: The COUNT function requires 1 argument(s).
select COUNT(*) + COUNT(*) -- output = 2
select count(12235545) -- output = 1
select COUNT(NULL) --Error:Operand data type NULL is invalid for count operator.
select COUNT('SQL is database Language') --Output=1
select COUNT(asdfg) + COUNT(8976) -- output = Invalid column name 'asdfg'.
select COUNT('asdfg') + COUNT(8976) -- output = 2
select count('1','2','3') --output = error -The count function requires 1 argument(s).
select * from Student
select COUNT(Student_Name) as cnt from Student
select COUNT('') -- Output = 1

--3.MIN()
--MIN() Function returns minmum value or smallest value from selected column of table. CDS Code Solution
select * from employee order by Employee_Salary asc
--Display minimum salary of employee from employee table.
select MIN(Employee_Salary) as MinSal from employee
select * from employee order by Employee_Name
select MIN(Employee_Name) as ASC_ORDER from employee
--Find second minimum salary
select MIN(Employee_Salary) from employee where Employee_Salary > 2000
--Subquery: Query within query is nothing but subquery.
select MIN(Employee_Salary) as secondMin from employee
where Employee_Salary > (select MIN(Employee_Salary) from employee)
--Third minimum salary
select MIN(Employee_Salary) from employee where Employee_Salary > 2200
select MIN(Employee_Salary) as Thirdmin from employee
where Employee_Salary > (select MIN(Employee_Salary) from employee
where Employee_Salary > (select MIN(Employee_Salary) from employee))
--Q.How to find 75th minimum salary from an employee

--4.Max
--MAX() Function returns maximum value or largest value from selected column of table.
select * from employee order by Employee_Salary Desc
--Display maximum salary of employee from employee table.
select MAX(Employee_Salary) as MaxSal from employee
select * from employee order by Employee_Name desc
select MAX(Employee_Name) as DESC_ORDER from employee
--Find second maximum salary
select MAX(Employee_Salary) from employee where Employee_Salary < 9200
select MAX(Employee_Salary) as secondMax from employee
where Employee_Salary < (select MAX(Employee_Salary) from employee)
--Third maximum salary
select * from employee order by Employee_Salary desc
select max(employee_salary) from employee where Employee_Salary < 8700
select MAX(Employee_Salary) as Thirdmax from employee
where Employee_Salary < (select MAX(Employee_Salary) from employee
where Employee_Salary < (select MAX(Employee_Salary) from employee))
--Q.Find out 65th highest salary from an employee?

--5.SUM()
--SUM function will calculate sum of value of that particular column.
--calculate sum of salaries from employee table
select SUM(Employee_Salary) as Total_Sal from employee

--TOP
--TOP Keyword will allow to select TOP records from table. CDS Code Solution
--It will be helpfulw when we are dealing with large number of records from table.
--you can select top 1 record or top 100 records depends on your requirement.
--Syntax:
--select Top 5(number of records) * from Table_name
--select Top 50 PERCENT * from Table_Name
--select top 3 records from table
select TOP 3 * from employee
--select 50% records from table
select TOP 50 PERCENT * from employee
--Select Top 5 records whose salary is highest
select TOP 5 * from employee order by Employee_Salary desc
--Select Top 5 records whose salary is low
select TOP 5 * from employee order by Employee_Salary
--Write a sql query to find 5th minimum salary of an employee
select max(employee_salary) as fifthMaxSal from employee where employee_salary
in --(2000,2200,3000,3500,4500)
(select Top 5 Employee_Salary from employee order by Employee_Salary asc)
--6th hihest salary from an employee
select MIN(Employee_Salary) sixthMaxSal from employee where Employee_Salary in
(select Top 6 Employee_Salary from employee order by Employee_Salary desc)

--Distinct
--With the use of DISTINCT clause data redundancy (Repetition) may be avoided.
--This clause will eliminate the repetitive appearance of same data.
--DISTINCT can come only once in a given select statement.
--Syntax:
--SELECT DISTINCT <column_name> FROM <table_name> WHERE <conditions>;
select * from employee
select count(Employee_City) from employee
select count(distinct(Employee_City)) from employee
--whenever we want to select multiple columns in distinct clause then we need to enclose all the columns 
--in round bracket.
select distinct Employee_Name,employee_DOJ from employee
select * from Student
select distinct Student_ID,City from Student
select distinct(Student_Name) from Student --It will consider NULL as value.
insert into Student values ('','','','','')
select COUNT(*) from Student
select COUNT(*) from
(select distinct Student_ID,Student_Name,City,Department,DOJ from Student) a;
--Q.Find distinct values from a table ? CDS Code Solution

--NULL values
--A column with NULL value is a column with NO VALUE.
--While inserting values into table column, if we have not mentioned a value for a particular column
--then by default SQL will replace with a NULL value for those columns.
--NULL values used as Placeholder for unknown or inapplicable values.
--It is not possible to test NULL values by using SQL comparision operator.
--In order to test or extract null values from table we have to use below functions
--1.IS NULL
--2.IS NOT NULL
select * from Student where Student_Name = NULL
--We want to find Null value in student_Name column
--Find out NULL records in student_Name column?
select * from Student where Student_Name is NULL
select * from Student where Student_Name is not NULL
--if you want find empty/blank values from column
select * from Student where Student_Name =''

--SQL Constraints
--Constraints are used to maintain the accuracy and integrity of the table.
--Constraints are used to limitthe type of data that go into the tbale column.
--There are various types of constraints
--1.Primary Key
--2.Foreign Key
--3.NULL key
--4.Unique Key
--5.Default Key
--6.Check Key
--1.Primary Key(PK)
--NOT NULL + UNIQUE
--PK Constraint uniquely identifies each record in database table.
--PK is used mostly with numeric values.
--A table can have only one PK but we can define PK multiple columns at a time.
Create table color(CID int primary key, Color_Name varchar(50),Company
varchar(50))
insert into color values (1,'Yellow','Asian Paints')
select * from color
insert into color values (2,'Yellow','Asian Paints')
insert into color values (NULL,'Orange','Nerolac')
--Error: Cannot insert the value NULL into column 'CID', table
'CDS_TESTING10.dbo.color';
--column does not allow nulls. INSERT fails.
--METHOD-II
insert into color (Color_Name) values ('RED')
--Error: Cannot insert the value NULL into column 'CID', table
'CDS_TESTING10.dbo.color';
--column does not allow nulls. INSERT fails. CDS Code Solution
insert into color values (3,'Orange','Nerolac')
insert into color (cid,Color_Name) values ('','RED')
select * from color
--2.Foreign Key(FK)
--The SQL FOREIGN KEY CONSTRAINT is used to ensure the referential
--integrity of the data in one table to match values in another table.
--The FOREIGN KEY CONSTRAINT is a column or list of columns which points to the PRIMARY KEY
--of another table.
--The main purpose of FOREIGN KEY is, only those values will appear which are present
--in the primary key table.
--The structure and data type of PRIMARY KEY and FOREIGN KEY must be same.
--Null Values can be applied at column level.
Create table Department(DID int primary Key, DEPT_NAME varchar(30))
insert into Department values (1,'MECH'),(2,'ECE'),(3,'CIVIL'),(4,'IT')
select * from Department
create table students(S_ID int primary Key, FULLNAME Varchar(50),City
varchar(30),
DEPT_ID int foreign Key references Department(DID) )
insert into students values (1,'Navneet','Indore',4)
insert into students values (2,'Aman','Ranchi',5)
--Error:The INSERT statement conflicted with the FOREIGN KEY constraint
"FK__students__DEPT_I__3A81B327".
--The conflict occurred in database "CDS_TESTING10", table "dbo.Department",
column 'DID'.
insert into students values (2,'Aman','Ranchi',NULL)
select * from Department
select * from students
insert into students values (1,'Navneet','Indore',4),
(2,'Aman','Ranchi',3),(3,'Sajjan','Banglore',NULL),(4,'Suresh','Chennai',3),
(5,'Rahul','Delhi',2)
insert into students values (6,'Amar','Kota',NULL)
--Q.What is refrential integrirty?
--Q.Can we delete PK table where the refrence has been given by another table?
--No - Could not drop object 'Department' because it is referenced by a FOREIGN KEY constraint.
--Q.What will be the process if single PK table references has been given to multiple FK tables?

--3.NOT NULL
--NOT NULL key/Constraint restricts a column from accepting NULL value into it.
create table orders(OID int primary key, orders varchar(20) NOT NULL, city
varchar(20)) CDS Code Solution
insert into orders values (1,'TV','PUNE')
--METHOD-II
insert into orders (OID,city)values (2,'Chennai')
--error:Cannot insert the value NULL into column 'orders', table
'CDS_TESTING10.dbo.orders';
--column does not allow nulls. INSERT fails.
insert into orders values (2,'','INDORE') --valid insert
select * from orders
insert into orders values (3,NULL,'KOTA') --invalid insert

--4.Unique
--UNIQUE constarint uniquely identifies each record in a database table.
--One NULL value can be inserted at column level.
Create table Languages(LID int primary Key, Language_Name varchar(50)
unique,Estd int NOT NULL)
insert into Languages values (1,'Python',1996)
select * from Languages
insert into Languages values (2,'Python',1998)
--error:Violation of UNIQUE KEY constraint 'UQ__Language__84F081F01C8F3DD4'.
--Cannot insert duplicate key in object 'dbo.Languages'. The duplicate key value
is (Python).
insert into Languages values (2,NULL,1998)
insert into Languages values (3,NULL,1998)
--Error:Violation of UNIQUE KEY constraint 'UQ__Language__84F081F01C8F3DD4'.
--Cannot insert duplicate key in object 'dbo.Languages'. The duplicate key value
is (<NULL>).
--PK= Unique + NOT NULL
Create table Languages1(LID int primary Key,
Language_Name varchar(50) unique NOT NULL, --PK
Estd int NOT NULL)
insert into Languages1 values (1,'Python',1996)
insert into Languages1 values (2,NULL,1998)
--error:Cannot insert the value NULL into column 'Language_Name',
--table 'CDS_TESTING10.dbo.Languages1'; column does not allow nulls. INSERT fails.
--5.check constraint/key
--Check constraint is used to check or restrict or limit the value range that can be placed in a column.
--If you define check constraint on a single column it allows ceratin values into that column.
Create table BANK_Application(BID int primary key,
Candiate_Name varchar(50) unique not null,
Age int check (age >=21 and age <=30))
insert into BANK_Application values (1,'IBPS-PO',22)
insert into BANK_Application values (2,'RRB-PO',20) CDS Code Solution
--error:The INSERT statement conflicted with the CHECK constraint
"CK__BANK_Applic__Age__4D94879B".
--The conflict occurred in database "CDS_TESTING10", table
"dbo.BANK_Application", column 'Age'.
select * from BANK_Application
insert into BANK_Application values (2,'RRB-PO',30)

--6.Default constraint/key
--Default constraint is used to insert a default value into a column.
--Default value will be added to all new records if no other value is specified.
Create table Trainee(TID int primary key,
Student_Name varchar(50) NOT NULL,
Training varchar(50) default 'Automation Testing',
City varchar(50) default 'PUNE')
--METHOD-I
insert into Trainee values (1,'Akash','Python-DS','INDORE')
insert into Trainee values (2,'Varun',Default,Default)
select * from Trainee
--METHOD-II
insert into Trainee (TID,Student_Name,Training,City) values
(3,'Komal','AWS','Ranchi')
insert into Trainee (TID,Student_Name) values (4,'Bhavana')
select * from Trainee
--Auto-Increment
--It is used to create unique values into column where we define auto-increment.
--While creating a unique value we can provide the diffrence of uniqueness.
--Syntax: column_name IDENTITY (Start,Difference in value)
--For example - Application_ID (1,1) ---1,2,3,4,5,6,7....n values
create table MPSC_APP(MID int identity,Student_Name varchar(20) unique Not
Null,city varchar(20))
insert into MPSC_APP values(1,'Nikhil','Pune')
--error: An explicit value for the identity column in table 'MPSC_APP1' can only be specified
--when a column list is used and IDENTITY_INSERT is ON.
insert into MPSC_APP values('Arun','Mumbai')
select * from MPSC_APP
--If due to some restrication if auto-increment column values are not inserted
then it will skip that value and insert next value.
--But if we want to insert the same value into that particular column then we
have set IDENTITY_INSERT ON
SET IDENTITY_INSERT MPSC_APP ON
insert into MPSC_APP(MID,Student_Name,city) values(2,'Suraj','Kota')
select * from MPSC_APP
create table MPSC_APP1(MID int identity(2,2),Student_Name varchar(20) unique Not
Null,city varchar(20)) CDS Code Solution
insert into MPSC_APP1 values('Vimal','Pune')
select * from MPSC_APP1

--3.Group By
--Group by clause is used to group the rows which have same values.
--Group by statement is used along with aggregate functions to group by the result set by one or more columns.
--Where clause is used to extract rows based on condition, but it can not applied to group result set.
--synatx:
--SELECT <column_list> FROM < table name >
--WHERE <condition>
--GROUP BY <columns>
--[HAVING] <condition>;
Create table Order_Types(OID int primary key,
Customer_Name varchar(50) NOT NULL,
Price int not Null,
Category varchar(20) NOT NULL)
insert into Order_Types values (1,'Kate',2000,'Grocery'),
(2,'Mark',2500,'Fruits')
,(3,'Tim',4000,'Grocery'),(4,'Paine',3500,'Cloths'),(5,'Steve',6000,'Sports'),
(6,'Bill',5600,'Grocery'),(7,'Andrew',9000,'Electronics'),
(8,'Grant',7500,'sports'),
(9,'Cummins',2800,'Cloths'),(10,'shon',9000,'Electronics')
select * from Order_Types
--Q.count number of cutomers in order type table category wise?
select category,COUNT(*) as NoofCustomers from Order_Types
group by Category
--Q.Find out the total price of each category with respect to all the customers.
select Category,SUM(Price) from Order_Types
--Error:Column 'Order_Types.Category' is invalid in the select list because
--it is not contained in either an aggregate function or the GROUP BY clause.
select Category,SUM(Price) as Total_Price from Order_Types
group by Category
--Find out the maximum price of each category?
select Category,max(Price) as Total_Price from Order_Types
group by Category
--Qlist out only those customer category whose price is > 5000?
select category,COUNT(*) as NoofCustomers from Order_Types
where Price > 5000
group by Category
--4.Having
--SQL HAVING clause specifies a search condition for a group or an aggregate.
--HAVING is usually used in a GROUP BY clause.
--but even if you are not using GROUP BY clause,
--you can use HAVING to function like a WHERE clause.
--synatx:
--SELECT <column_list> FROM < table name > CDS Code Solution
--WHERE <search_condition]>
--GROUP BY <columns>
--[HAVING] <search_condition]>
--[ORDER BY {order_expression [ASC | DESC]}[, ...]];
--Find out only those category whose customer base is greater than 2?
select Category,COUNT(*) as N0_of_records from Order_Types
group by Category
having COUNT(*) > 2
--Q.Find out only those category of products whose total value is greater than
10000?
select Category,SUM(Price) as Total_Price from Order_Types
group by Category
having SUM(Price) > 10000
order by SUM(Price)
--Q.Find out total value of each category and min and maximum values of each category along with its avg value?
select Category, SUM(Price) as TOTAL_VALUE,
MIN(Price) as Min_Value,MAX(Price) as MAX_VALUE , avg(Price) as Avg_Value from
Order_Types
group by Category
having AVG(Price) > 5000
order by Category
--Order of execution of SQL statement
--from - Choose and join tables to get base data.
--where - Filters the base data.
--group by - Aggregates the base data.
--having - Filters the aggregated data.
--select - Returns the final data.
--order by - Sorts the final data.
--TOP/limit - Limits the returned data to a row count.
--SQL Statements
--1.DML (Data Manipulation Language) - S_UID
--SELECT, UPDATE, INSERT and DELETE
--2.DDL (Data Defination Language) - DR.CAT
--DROP,RENAME,CREATE, ALTER and TRUNCATE
--3.DCL (Data Control Language)
--GRANT and REVOKE
--4.TCL(Transaction Control Language)
--TRAN, COMMIT , ROLLBACK
--1.DML (Data Manipulation Language) - S_UID
--DML statements are used to play with table data which stored inside the table
and not with table structure.
--SELECT, UPDATE, INSERT and DELETE
--SELECT
--SQL Select statement tells the database to fetch information from a table.
--A * character can be used to select all the columns of a table.
--Syntax: CDS Code Solution
--SELECT *|{[DISTINCT] column|expression [alias]...} FROM <table_name>;
select 98766554
select 'CDS Code Solution' as Institute_Name
select * from employee
select 8888 from employee
select NULL
select NULL + NULL
select 8888 + NULL
select NULL + 8888 + NULL
select 9876 + 3246
select 9876 + 'Praveen'
select '9876' + 'Praveen'
select * from employee

--UPDATE
--Update statement is used to update existing records in table.
--While updating column if you have not specified condition then it will modify/
update the complete column data.
--synatx:
--UPDATE Table_Name SET col11= value , col2=value....,
--Where Condition;
--single column update
select * from student
update student set city = 'PUNE' -- without condition
update Student set City = 'MUMBAI' where Student_Name is NULL --with condition
--Multiple column update
update Student set Student_Name = 'Amar', Department ='Computer'
where Student_ID =5
select * from Student
select * from employee
--Update city of an employee to Tirupati whose salary is fourth highest among all the employees
update employee set Employee_City = 'Tirupati' where Employee_Salary in
(select min(Employee_Salary) from employee where Employee_Salary in
(select Top 4 Employee_Salary from employee order by Employee_Salary desc))
--Update city to 'DELHI' , employees ranging from 5 to 8 in employee table?
--DELETE
--DELETE statement is used to delete the records from table on Row-By-Row basis.
--Delete statement is not affecting table structure.
--While using DELETE statement we need to be more careful because if forget to
--mention condition then it will delete complete records from table. CDS Code Solution
--synatx:
--DELETE FROM TBALE_NAME where condition;
select * from Student
delete from Student --without condition / it will delete all the table records
from table.
select * from employee
delete from employee where Employee_ID > 10
--or
delete from employee where Employee_ID in (11,12,13)
--or
delete from employee where Employee_ID between 11 and 13
--INSERT
--Insert statement allow us to insert the data into all the columns of table or
selected columns of table.
--While inserting data into table it follows two methods .
--Method - I
--It will allow you to insert into table as per the sequence defined while
creating a table.
--If we miss the sequence or no of supplied values of columns then it will
through an error.
--syntax: INSERT INTO TABLE_NAME VALUES(col1,col2,col3...coln)
select * from Student
--single record
insert into Student values(1,'Rahul','DELHI','CIVIL','2021-09-23')
--multiple records
insert into Student values(2,'Mohan','Ranchi','MECH','2022-01-01'),
(3,'Kiran','PUNE','Electronics','2020-08-22'),
(4,'AMAM','INDORE','Chemical','2019-06-21')
insert into Student values(5,'Rahul','DELHI','2021-09-23')
--exception : Column name or number of supplied values does not match table
definition.
insert into Student values ('','','','','')
--'' - string value
select * from Student
delete from Student where Student_ID =
--NOTE:
--If we insert a blank value to any column in table, depends on data type
--defined on that particular column
--it will add default values to it.
--1.if column is defined has data type int/float and if we insert blank value
--then by default it will show zero (0).
--2.if column is defined has data type varchar and if we insert blank value then
--by default it will show balnkspace.
--3.if column is defined has data type datetime and if we insert blank value
--then by default
--it will show 1900-01-01 00.00.00.000
--for date datatype - 1900-01-01
--for time datatype - 00.00.00.000
--METHOD-II CDS Code Solution
--It will allow us to insert column values as per your choice but condition is
--that we have to follow
--our own defined sequence of columns while inserting data into a table.
--synatx:INSERT INTO Table_Name (col1,col2,col5) values (col1,col2,col5)
select * from Student
insert into Student (Student_Name,Student_ID,DOJ) values ('Bhavana',5,'2019-07-
01')
insert into Student (City,Student_ID,DOJ) values ('','','')
--NOTE
--In METHOD-II , if we are not including columns while inserting data then for
--that column
--by default value is always 'NULL'
--Duplicate records
--How to find duplicate records from table?
--Whenever PK is not defined then their might be chance to have duplicate
--records in table.
--To identify that we need to create group of all the columns and compare each
--row to its adjecent row from table.
--Synatx:
--select col1,col2,col3,col4, COUNT(*) from Table_Name
--Group by col1,col2,col3,col4
--having COUNT(*) > 1
select Student_ID,Student_Name,City,Department,DOJ,COUNT(*) as Duplicate From
Student
group by Student_ID,Student_Name,City,Department,DOJ
having COUNT(*) > 1
--How to delete duplicate records from table in simple way?

--DDL
--DDL statements are used to play with table related activities or structure of
--the table.
--CREATE, DROP, TRUNCATE,ALTER and RENAME
--CREATE
--By using CREATE statement you can create
--table,database,views,triggers,indexexs and schemas.
--synatx:
--CREATE TABLE TBALE_BASENAME
--CREATE DATABASE DATABASE_NAME
--DROP
--DROP statement will allow you to delete complete table structure along with data.
--DROP can be used to drop database,views,triggers,store procedure,indexes etc.
--We can not use any filters/condition statement along with drop.
--Synatx:
--DROP TABLE TABLE_NAME
--DROP DATABASE DATABASE_NAME
select * from student
--Drop table
DROP table Student CDS Code Solution
--Drop database
drop database Testing
--Truncate
--Truncate will allow us to delete data from table at once.
--Truncate will not delete table structure.
--Truncate will not allow to use filters or conditions.
--Syntax:
Truncate Table Table_name
select * from students
truncate table students
--Q.Diffrence between Drop,Delete and Truncate?

--ALTER
--By using ALTER statement , we can manipulate or play with table
columns/attributes/fields.
--By using ALTER we can perfom multiple functions
--1.We can add one or more columns at a time into table.
--2.We can delete or remove one or more columns from table.
--3.We can increase or decrease the size of column into the table.
--4.We can change the data type of column of table.
--5.We can define constraints to existing columns into the table
--6.We can drop the constraints from column into the table.
--1.We can add one or more columns at a time into table.
--Syntax:
--ALTER TABLE TABLE_NAME ADD col1 datatype,col2 datatype,....coln data type
--we want to add one column into employee table Employee_Address
alter table employee add Employee_Address varchar(50)
--We want to add two columns into employee table which is
Employee_Role,Employee_PinCode
alter table employee add Employee_Role varchar(30),Employee_PinCode int
select * from employee
--2.We can delete or remove one or more columns from table.
Syntax:
--ALTER TABLE Table_name drop column col1,col2...coln
--Drop Employee_pinCode column from employee table?
alter table employee drop column Employee_pinCode
select * from employee
--Drop Employee_Address,Employee_Role column from employee table
alter table employee drop column Employee_Address,Employee_Role
--******************************************
--We can display table structure by using below command
 exec sp_help employee
 sp_help employee
--******************************************
--Column_name Type Computed Length
--Employee_ID int no 4
--Employee_Name varchar no 50 CDS Code Solution
--Employee_City varchar no 50
--Employee_Salary int no 4
--Employee_DOJ date no 3
--3.We can increase or decrease the size of column into the table.
--Syntax:
--ALTER Table Table_name ALTER column Column_name datatype
--Need to increse the size of employee_name column from varchar(50) to varchar(100)
alter table employee alter column employee_name varchar(100)
--Need to decrease the size of employee_name column from varchar(50) to
varchar(1)
alter table employee alter column employee_name varchar(6)
EXEC SP_HELP employee
select * from employee
--4.We can change the data type of column of table.
--Syntax:
--ALTER Table Table_name ALTER column Column_name datatype
--We want to change Employee_ID datatype to varchar
alter table employee alter column employee_id varchar(30)
alter table employee alter column employee_id int
--We want to change Employee_name datatype to varchar
alter table employee alter column Employee_name int
--Exception:
--Conversion failed when converting the varchar value 'Kiran' to data type int.
--5.We can add the constraints to a column into the table.
--syntax:
--ALTER TABLE TABLE_NAME ADD CONSTRAINT User_Defined_Name constraint
(column_name)
exec sp_help employee
--PK
--Before defining NOT NULL on column
--Define PK consytraint on employee_id column of employee Table
alter table employee add constraint PK primary key (employee_id)
--Error:
--Cannot define PRIMARY KEY constraint on nullable column in table 'employee'.
--Could not create constraint or index. See previous errors.
--NOTE:
--1.If we want to define PK on any column should define NOT NULL
--and it should contain unique value into that column.
alter table employee alter column employee_id int not null
--after defining NOT NULL on column
alter table employee add constraint PK primary key (employee_id)

--Fk
--Syntax:
Alter table Table_name add constraint FK_NAME foreign key(Column_name)
references Table_name(Column_name)
select * from students CDS Code Solution
select * from Department
alter table students add constraint FK_KEY foreign Key (DEPT_ID) references
department(DID)
--Unique
--Syntax:
--ALTER TABLE TABLE_NAME ADD Constraint Constraint_name unique
(Col1,col2,col3.....)
--Define unique constraint on Fullname and City column of students table?
alter table students add constraint CityName_uUnique unique (Fullname,City)
--Default
--Syntax:
--ALTER TABLE Table_Name ADD CONSTRAINT Constraint_Name Default 'Default_Value'
FOR Existing_Column
--Define Default value to employee_city column as 'PUNE' by using Default constraint.
ALTER TABLE employee ADD CONSTRAINT Default_City Default 'PUNE' FOR Employee_City
--Check
--syntax:
--ALTER TABLE Table_Name ADD CONSTRAINT Constraint_Name check (column = value/condition)
ALTER TABLE employee ADD CONSTRAINT Constraint_Name check (employee_Salary >
1000)
select * from employee
exec sp_help employee
--6.We can drop constraints from existing columns into the table.
--syntax:
--alter table Table_name Drop Constraint Constraint_Name
--Dropping an existing constrint from table column
alter table students Drop constraint FK__students__DEPT_I__3A81B327

--RENAME
--In SQL Server we have built-in Store Procedure(SP) to rename database and
--existing table columns i.e. SP_RENAME.
--We dont have any keyword such RENAME to perform rename operation.

--syntax:
--Table name change
EXEC SP_RENAME 'DATABASE_NAME.DBO.TABLE_NAME(old)','TABLE_NAME(NEW)'
--Column Name change
EXEC sp_rename 'TBALE_NAME.COLUMN_NAME(OLD)','NEW_COLUMN_NAME(NEW)'
select * from EmployeeSalaries
--Column name change
exec sp_rename 'EmployeeSalaries.salary' ,'EMPLOYEE_SALARY'
--Caution: Changing any part of an object name could break scripts and stored
procedures.
--Table name chnage
EXEC sp_rename 'CDS_TESTING10.dbo.EmployeeSalaries','EMP_SAL'
select * from Emp_Sal CDS Code Solution

--INFORMATION_SCHEMA
--INFORMATION_SCHEMA is a system database schema that provides metadata about
--the database objects within a particular database.
--It contains a set of views and tables that allow you to query and retrieve information
--about the database structure, such as tables, columns, views, constraints, and more.
--In order to view, How many tables has been created in a particular database
select * from INFORMATION_SCHEMA.TABLES
--All the columns related information of each and every table
select * from INFORMATION_SCHEMA.COLUMNS
--Search all the detail information about employee table columns.
select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME = 'Employee'
--If we need particular information
select TABLE_SCHEMA,TABLE_NAME,COLUMN_NAME,DATA_TYPE from
INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'department'
--Table Back Up
--We can take table back up by using below synatx or statement.
--Syntax:
--SELECT * INTO BACKUP_TABLE_NAME FROM EXISTING_TABLE_NAME
--we want to take back of employee table till 2nd of june
select * into Employee_020623 from employee
select * from Employee_020623
--If we want to copy only structure not an data
select * into employee_structure from employee where 1=2
--It will copy structure as well as complete data
select * into employee_DATA from employee where 1=1
select * from employee_structure

--INSERT INTO SELECT
--The above statment is used to Copy data from one table to another.
--But condition is that , It requires same structure of both the tables
--synatx:
--INSERT INTO TABLE_NAME SELECT * from TABLE_NAME where condition;
select * from employee
select * from employee_structure
--Copy all the employees whose salary is greater than 5000 into another tablecalled employee_structure
INSERT INTO employee_structure select * from employee where Employee_Salary >
5000

--JOIN
--JOIN used to extract value from two or more tables which is having common column in both the tables.
--A JOIN works on two or more tables,if they have at least one common field/Column 
--and have a relationship between them.
--SQL joins are used to combine data from two or more tables based on 
--a related CDS Code Solution column between them.
--JOIN = CROSS PRODUCT + Condition
--table1 -5 and table - 6 - cross product =30

--Types
--1. INNER JOIN/ JOIN
--2. OUTER JOIN
-- a. LEFT JOIN / LEFT OUTER JOIN
-- b. RIGHT JOIN / RIGHT OUTER JOIN
-- c. FULL JOIN / FULL OUTER JOIN
--Q. What is JOIN and Types of join?

--1. INNER JOIN
--The INNER JOIN returns the rows that have matching values in both tables.
--Synatx:
--SELECT */Col_Name(s) from TABLE1 T1 JOIN / INNER JOIN TABLE2 T2
--ON T1.Col1 = T2.Col1
Create table Cutomer (CustomerID int Primary Key,CustomerName
varchar(50),Country varchar(20))
--Cutomer
--CustomerID | CustomerName | Country
-----------------------------------------
--1 | John Smith | USA
--2 | Emily Johnson | Canada
--3 | David Brown | UK
--4 | Lisa Wilson | Australia
insert into Cutomer values(1,'John Smith','USA'),(2,'Emily Johnson','Canada'),
(3,'David Brown','UK'),
(4,'Lisa Wilson','Australia')
create table Orders (OrderID int primary key,CustomerID int,OrderDate
date,TotalAmount float)
--Order
--OrderID | CustomerID | OrderDate | TotalAmount
--------------------------------------------------
--1 | 1 | 2022-05-15 | 100.00
--2 | 2 | 2022-06-02 | 75.50
--3 | 1 | 2022-06-10 | 50.25
--4 | 3 | 2022-07-01 | 200.00
insert into orders values (1,1,'2022-05-15','100.00'),(2,2,'2022-06-
02','75.50'),(3,1,'2022-06-10','50.25'),
(4,3,'2022-07-01','200.00')
select * from Cutomer
select * from orders

--Joining Two tables
--Find out total amount for each employee who has completed order?
Select C1.CustomerID,C1.CustomerName,O1.TotalAmount from Cutomer C1 JOIN orders O1
ON C1.CustomerID=O1.CustomerID

--Find out total amount of all the orders which has been done by customer either 
--on same date or diffrent date.
Select C1.CustomerID,C1.CustomerName,Sum(O1.TotalAmount) as TotalAmount from
Cutomer C1 JOIN orders O1 CDS Code Solution
ON C1.CustomerID=O1.CustomerID
GROUP BY C1.CustomerID,C1.CustomerName
--States(Son)-->Citites(Father)-->Users(Grandfather)

--Joining three tables
Create table states (id int primary key,StateName varchar(50))
INSERT INTO states VALUES (3,'California'),(2,'Florida'),(1,'Nevada');
create table cities (id int primary key, CityName varchar(50),State_id int
foreign key references states(id))
INSERT INTO cities VALUES (1,'Miami',1),(2,'Orlando',1),(3,'Las Vegas',2),
(4,'Coyote Springs',2);
create table nusers (id int primary key,First_Name varchar(50),Last_Name
varchar(50),City_Id int foreign key references cities(id))
INSERT INTO nusers VALUES (1,'Jhon','Doe',1),(2,'Albert','Thomson',1),
(3,'Robert','Ford',2),(4,'Samantha','Simpson',3);

--Joining three tables
select * from states
select * from cities
select * from nusers
--Display User id ,Full Name along with their cities and states.
select u1.id,(u1.First_Name + u1.Last_Name) as FullName,c1.CityName,s1.StateName
from states s1
join cities c1 On s1.id= c1.State_id
Join nusers u1 ON c1.id = u1.City_Id

--2.Outer Join
--a.LEFT OUTER JOIN/ LEFT JOIN
--It will display all the rcords from left table and matching records of right table
--If the records are note matching with left table in that palce it will display NULL value.

--Synatx:

--SELECT */Col_Name(s) from TABLE1 T1 LEFT JOIN / LEFT OUTER JOIN TABLE2 T2
--ON T1.Col1 = T2.Col1
select * from Cutomer
select * from orders

--Display only those customers who is not having any records in order table.
select * from Cutomer c1 LEFT JOIN orders o1 ON c1.CustomerID=o1.CustomerID
--Can we convert left join into inner join?YES
--Can we convert inner join into left join?NO
select * from Cutomer c1 LEFT JOIN orders o1 ON c1.CustomerID=o1.CustomerID
where o1.OrderID is not null
select * from Cutomer c1 Inner JOIN orders o1 ON c1.CustomerID=o1.CustomerID

--B.RIGHT OUTER JOIN/ LEFT JOIN
--It will display all the rcords from Right table and matching records of left table
--If the records are note matching with Right table in that place it will display NULL value.
--Synatx:
--SELECT */Col_Name(s) from TABLE1 T1 RIGHT JOIN / RIGHT OUTER JOIN TABLE2 T2
--ON T1.Col1 = T2.Col1
select * from Cutomer CDS Code Solution
select * from orders
select * from Cutomer c1 RIGHT JOIN orders o1 ON c1.CustomerID = o1.CustomerID

--C.FULL OUTER JOIN / FULL JOIN
--Full Join= Left join + Right Join
--Full join will display all the records from both the tables
--If the records are matching from both the tables then it will show all those records and
--along with that it will display NUll for non-matching records from both the tables.

--Synatx:
--SELECT */Col_Name(s) from TABLE1 T1 FULL JOIN / FULL OUTER JOIN TABLE2 T2
--ON T1.Col1 = T2.Col1
select * from Cutomer
select * from Orders
select * from Cutomer C1 left JOIN Orders O1 ON C1.CustomerID= O1.CustomerID
select * from Cutomer C1 right JOIN Orders O1 ON C1.CustomerID= O1.CustomerID
select * from Cutomer C1 FULL JOIN Orders O1 ON C1.CustomerID= O1.CustomerID
--Q.If we have a NULL value in Table1 and Table 2 then what is the output of Inner Join?
select * from states
select * from cities
select * from nusers
select * from states s1 full join cities c1 on s1.id = c1.State_id full join nusers u1 on c1.id = u1.City_Id

 --SELF JOIN 
--A self-join refers to a type of join operation where a table is joined with itself.
--If table is joining it self then it is self join.
--in sql server their is no such keyword called SELF JOIN.

select * from Employee_Manager_Details

--We have to display employee name along with his manger name from Employee_Manager_Details.
select * from Employee_Manager_Details e1 join Employee_Manager_Details e2 on  e1.emp_id=e2.manger_id


select e1.emp_id,e1.emp_name,e2.emp_name
as manager_name,e2.manger_id
from Employee_Manager_Details e1 join Employee_Manager_Details e2 on 
e1.emp_id=e2.manger_id

--While using SET operator We need to be careful with the below points
--1.Each SELECT statement or Table within SET oprator must have the SAME number of Columns.
--2.Columns must have similar data types.
--3.Columns in SELECT statement or table must be in the same order

--1.UNION
--The UNION operator combines the result sets of two or more SELECT statements into a single result set. 
--It removes duplicate rows from the final result.

--2.UNION ALL
--UNION ALL does not remove duplicate rows from the final result. 
--It simply combines the result sets of multiple SELECT statements,
--including all rows from each SELECT statement, regardless of whether they are duplicates or not.
--UNION ALL is useful when you want to combine the results of multiple SELECT statements and retain all rows, 
--even if there are duplicates.

--3.INTERSECT
--The INTERSECT operator returns only the distinct rows that appear in both result sets of the SELECT statements. 
--It selects the common rows while eliminating duplicates.

--4.EXCEPT/MINUS
--The EXCEPT operator returns the distinct rows from the result set 
--of the first SELECT statement that are not present in the result set of the second SELECT statement.

select getdate();
select SYSDATETIME()

--There are diffrent functions in SQL to modify or perform date and time related operations 
--1.DATEDIFF()
--2.DATEPART()
--3.DATEADD()


--1.DATEDIFF()
--DATEDIFF() Function is used to caluculate the diffrence between two dates with diffrent intervals.
--DATEDIFF() function always requires 3 arguments 
--Syntax:
--DATEDIFF(Interval,DATE1/Column,DATE2/Column)

--Interval
--Year,YYYY,YY = Year
--Quarter,QQ,Q = Quarter 
--Month,MM,M   = Month
--DAYOFYEAR	   = Day of the year
--DAY,DY,Y	   = Day
--WEEK,WW,WK   = Weekday
--HOUR,HH	   = HOUR
--MINUTE ,MI,N = MINUTE
--SECONDS,SS,S = SECONDS
--MILISECOND,MS= MILISECONDS

--how many years back 1983 world cup has been played as of present day?
select datediff( year,'1983/06/13',getdate());

--How to calculate your present age?
select datediff(d,'09/09/1996',getdate())

--Identify those accounts which opened during current year i.e., 2023.
select * from customer where year(acc_open_data)=2023

--Calculate the account age of each account?
select *, datediff(year, acc_open_date,getdate()) from customer;


--Update the barnches of current year opened accounts to DELHI branch?
update customer set branche='deihi' where year(acc_oprn_date)=2023;

select *, case 
when employee_id%
--Display all the accounts from bank except accounts opened in current year.
select * from customer where  year(ACC_OPEN_DATE)=!2023

select * from Bank_Details;

select * from Bank_Details where year(ACCT_OPEN_DATE) in (2023,2021,2019)

--2.DATEPART()
--DATEPART() Function allow you to display part of date i.e, only year or month or day.

--Display only account opened during 2023,2021 and 2019.
select * from bank_details datepart(yy,ACCT_OPEN_DATE) in (2023,2021,2019)


select * from Bank_Details where DATEPART(yy,acct_open_date) in (2023,2021,2019)

select datepart(hh,getdate())


--3.DATE ADD
--DATEADD() Function will us to add any specific date in terms of years or days or any interval which 
--supports date and time functions.

select dateadd(yy,10,getdate());

--We can replace NULL value from column with user defined value by using below functions 
--1.ISNULL()
--2.COALESCE()
--3.Case()

--1.ISNULL() -sql and NVL - oracle
--ISNULL() function will help to replace NULL value with any other user
--defined value or user understandable format.
 select isnull(null,'azhar')

 select sid,fn,ln,isnull(did,'no dept id allocated')as dept_id from students;


 --2.COALESCE()
-- COALESCE() Function try to locate first appearance of NON NULL value from a row of table.
--If it is unable to locate NON NULL value then it always returns a NULL value.
--If there are any blank space or empty space then it will display space as non null value because space
--s not considered as NULL Value.

--whenever we use COALESCE() function the columns included into it must have same datatype otherwise it through 
--exception called convesrion error.

select * from Value_Identifier

select * , coalesce(FirstName,middlename,lastname) as Fullname from Value_Identifier

insert into Value_Identifier values(7,'Amar','Kiran',NULL,3700)
insert into Value_Identifier values(NULL,'Sumit','Mohan','Varma',3900)

delete from Value_Identifier where ID is NULL

3.CASE()
--Case Statement identify the condition and returns a value.
--It works like IF-ELSE statement.
--If ther is no ELSE statement then it returns NULL value.

select * from employee

--Update department as 'Testing' whose ID is even else 'Development'.

select *, case
when employee_id% 2=0 then 'testing'
else 'development'
end as new from employee;

update employee set dept=
case
when employee_id %2=0 then 'testing'
else 'development'
end 

--For employee table we need display category of employess if emp id is even then
--'EVEN JOINER' and for odd 'ODD JOINER'
select *, case 
when empid %2=0 then 'even joiner'
when empid%2=1 then 'odd joiner'
end as category_of_emp.

--Exist and Non-Exist
--EXIST is used to check whether the result of Co-related or nested query is empty or not

--EXIST(S)
--TRUE : S has atleast one row/record.
--FLASE: S has no row / record.

select * from Customer
select * from Cust_Order

--Display only those customer details who has bought any product.
select * from customer c1 where exists( select * from cust_order o1  where c1.cust_id=o1.cust_id);

select * from Customer C1 where  exists (select * from Cust_Order O1 where C1.CUST_ID = O1.CUST_ID)

select * from Customer C1 where  exists (select * from Cust_Order O1 where C1.CUST_ID = O1.CUST_ID)


--Sub-Query and Co-Relational Query
--Sub-Query
--Query within query i.e Outer query and inner query both are independent

select max(Employee_Salary) from employee where Employee_Salary <( select max ( Employee_Salary )
from employee)

select MAX(Employee_Salary) as Sal from employee
where Employee_Salary < (select MAX(Employee_Salary) as Sal from employee)

select * from employee order by Employee_Salary;


--OVER clause
--The OVER clause is a clause used in SQL to perform calculations and aggregations over a specific 
--set of rows 
--within a query result. 
--It is commonly used in conjunction with window functions, 
--which are analytical functions that operate on a "window" of rows defined by the OVER clause.

--Syntax:
--<function> OVER (PARTITION BY <column(s)> ORDER BY <column(s)>)

--components of the OVER clause:
--<function>: This represents the window function that will be applied to the rows defined by the window frame. 
--			   Examples of window Function Count(),AVG(),MAX(),MIN(),SUM(),RANK(),Dense_Rank() and ROW_NUMBER() etc
--PARTITION BY: This is an optional part of the clause that allows you to divide the rows into partitions or groups 
--              based on one or more columns. The window function will be calculated separately for each partition. 
--				If not specified, the entire result set is considered as a single partition.
--ORDER BY: This specifies the column(s) used to order the rows within each partition. 
--			The window function is applied in the order defined by this clause.

--Use:
--The OVER clause allows you to perform calculations and aggregations over specific subsets of rows within a query, 
--enabling powerful analytical capabilities. It is commonly used for tasks like calculating running totals, 
--cumulative sums, averages, rankings.

Create table EMPLOYEE_TEAM(EID int, EMP_NAME Varchar(20),Gender Varchar(1),Salary int)

Insert into EMPLOYEE_TEAM values (1,'Praveen','M',1600),(2,'Suman','F',1800),(3,'Radhika','F',2600),
(4,'Kirti','F',5000),(5,'Mohan','M',1500),(6,'Sohan','M',3000),(7,'Varun','M',4500),
(8,'Suraj','M',6000),(9,'Geeta','F',5500),(10,'Rohan','M',7000)

select * from EMPLOYEE_TEAM;

select *, ROW_NUMBER() over (partition by gender order by salary desc) as rownumber from EMPLOYEE_TEAM;

--Display count of Female and Male employees along with their AVG,Min and Maximum salary.

select *,
count(gender) over (partition by gender) as total_count,
max(salary) over (partition by gender) as maxsal,
min(salary) over (partition by gender) as minsal,
avg(salary) over (partition by gender) as avgsal
from EMPLOYEE_TEAM

--Window Functions / Analytical Function in SQL 
--RANK(), DENSE_RANK(), ROW_NUMER() , LEAD(), LAG()

--RANK() and DENSE_RANK()
--Both the function are used to extract  ranks from table records but diffrence in theri operation.
--Both function will start rank from 1.

--RANK() function skipps ranking if their is same value or number.
--synatx: 
--RANK() OVER ([PARTITION BY Col1,Col2,col3..Coln] ORDER BY col1,col2,col3...Coln)

--PARTITION BY clause is optional but Order by clause is mandotory or compulsory.

--Dense_Rank() function will not skip ranking if their is same value or number.
--synatx: 
--DENSE_RANK() OVER ([PARTITION BY Col1,Col2,col3..Coln] ORDER BY col1,col2,col3...Coln)

--PARTITION BY clause is optional but ORDER BY clause is mandotory or compulsory.

--Score        = 495, 490, 490, 487, 485, 485, 450
--Rank()	   - 1  ,  2 ,  2 ,  4 ,  5 ,  5 ,  7
--Dense_Rank() - 1  ,  2 ,  2 ,  3 ,  4 ,  4 ,  5

create table Marks_Score(ID int, S_NAME varchar(20),Marks int)

insert into Marks_Score values (1,'Praveen',495),(2,'Akash',490),(3,'Rohan',490),(4,'Kisan',487),
(5,'Amar',485),(6,'Rahul',485),(7,'Kiran',450)

select * from Marks_Score;

select *, rank() over(order by marks desc) as rank_number from Marks_Score;

select *, dense_rank() over(order by marks desc) as dense_rank_number from Marks_Score;

select *, rank() over(order by marks desc) as rank_number,
dense_rank() over(order by marks desc) as dense_rank_number
from Marks_Score;

--By using dense_rank function we can extract highest and lowest salary

select * from employee order by Employee_Salary desc;

--department wise third max salary
select * from(
select *, DENSE_RANK() over (order by employee_salary desc) as temp from
employee) as result where temp=3;

select * from(
select *, RANK() over (order by employee_salary desc) as temp from
employee) as result where temp=3;

-- department wise fourth max salary by using rank
select * from (
select *, rank() over( order by employee_salary desc) as rank_number from employee
) as result where rank_number=4;

-- department wise fourth max salary by using dense_rank
select * from (
select *, dense_rank() over( order by employee_salary desc) as rank_number from employee
) as result where rank_number=4;

--ROW_NUMBER()
--This function return sequential number or sequence of row staring from 1.
--ORDER BY Clause in Mandotory or Required or compulsory.
--PARTITION BY Clause is optional.
--Whenever data is partitined by using some columns then ROW_NUMBER resets to one.

--syntax:
--ROW_NUMBER() OVER ([PARTITION BY Col1,col2...coln] ORDER BY col1,col2..coln)

select *, ROW_NUMBER() over(order by employee_salary desc) as rownumber from employee;

select *, ROW_NUMBER() over(partition by dept order by employee_salary desc) as rownumber from employee;


select * from EMPLOYEE_TEAM

--Find duplicate records 
insert into EMPLOYEE_TEAM values(5,'raaj','m',51020)

select eid,emp_name,gender,salary, count(*) as duplicate from EMPLOYEE_TEAM
group by eid,emp_name,gender,salary having count(*) >1;

select *, ROW_NUMBER() over ( partition by eid,emp_name,gender,salary 
order by eid,emp_name,gender,salary ) as result from EMPLOYEE_TEAM;


--Remove Duplicate records from table
with cte --move down in CTE TOPIC

Create table Sales (sale_day date,sale_month varchar(5),sale_time time,branch varchar(20),
article varchar(20),quantity int,revenue int)

insert into sales values ('2021-08-11','AUG','11:00','New York','Rolex P1',1,3000)
insert into sales values ('2021-08-14','AUG','11:20','New York','Rolex P1',2,6000)
insert into sales values ('2021-08-17','AUG','10:00','Paris','Omega 100',3,4000)
insert into sales values ('2021-08-19','AUG','10:00','London','Omega 100',1,1300)
insert into sales values ('2021-07-17','JUL','09:30','Paris','Cartier A1',1,2000)
insert into sales values ('2021-07-11','JUL','10:10','New York','Cartier A1',1,2000)
insert into sales values ('2021-07-10','JUL','11:40','London','Omega 100',2,2600)
insert into sales values ('2021-07-15','JUL','10:30','London','Omega 100',3,4000)

Select * from Sales

--query that returns the total quantity of units sold for each article.
select sale_day,sale_month,sale_time,branch,article ,sum(quantity) over ( partition by article) as total_sale
from sales;

--CTE (Common Table Expression)
--It is temporary result set.
--It will store temporary result set and it will make us use in main query.
--It can be referred within SELECT , INSERT, UPDATE and DELETE statements that immediately follows CTE.
--ONLY DML statements we can perform along with CTE.

--syntax:
--WITH CTE_NAME (Col1,col2...coln)
--AS
--(SQL Query)
--DML Statements (SELECT,INSERT,UPDATE and DELETE)

--Find duplicate records 
select * from EMPLOYEE_TEAM;

select eid, emp_name,gender,salary , count(*) as duplcate from EMPLOYEE_TEAM
group by eid, emp_name,gender,salary having count(*) >1;

--Remove Duplicate records from table
--SELECT
with cte as
( select * , row_number() over ( partition by eid, emp_name,gender,salary 
order by eid, emp_name,gender,salary) as result from EMPLOYEE_TEAM)
select * from cte where result>1;

--DELETE
with cte as
( select *,row_number() over ( partition by eid, emp_name,gender,salary
order by eid, emp_name,gender,salary) as result from EMPLOYEE_TEAM)
delete from cte where result > 1;

create table EMP(ID int,E_NAME varchar(20),Gender varchar(1),Dept_ID int)

insert into EMP values (1,'Vikarm','M',2),(2,'Varun','M',1),(3,'Shital','F',3),(4,'Shivali','F',2),
(5,'Sohan','M',4),(6,'Mohan','M',1),(7,'Sonal','F',3)

create table DEPT(Dept_ID int,DeptName varchar(20)) 

insert into DEPT values (1,'Dev'),(2,'Test'),(3,'AWS'),(4,'Java')

select * from EMP;
select * from DEPT;

--Find out the total number of employees departmet wise?
select d.DeptName, count(*)  as totsal_employee from emp e join dept d on e.Dept_ID=d.Dept_ID
group by d.DeptName

select D1.DeptName,COUNT(*) As TotalEmployees from EMP E1 join DEPT D1 ON E1.Dept_ID = D1.Dept_ID
group by D1.DeptName

--LEAD and LAG
--Introduced  in SQL 2012 
--LEAD function is used to access subsequent row data along with current row data.
--LAG Function is used to access previous row data along with current row data.

--ORDER BY Clause is required or mandotory.
--PARTITION BY Clause is optional.

--syntax:
--LEAD(Col_Name, offset, Default_value) OVER ([PARTITION BY col1,col2....] ORDER BY Col1,col2.....)
--LAG(Col_Name, offset, Default_value) OVER ([PARTITION BY col1,col2....] ORDER BY Col1,col2.....)

--Offset - Number of rows to lead or lag
--Default_value - The default value return if the number of rows to lead or lag goes beyond 
--first row or last row in  table or partition. If default value is not specified NULL is returened.

--LEAD
select * from EMPLOYEE_TEAM

select *, lead(salary) over ( order by salary) as leadding from EMPLOYEE_TEAM

select *, lag( salary) over ( order by salary) as lagging from EMPLOYEE_TEAM;

select *, lag(salary,2) over ( order by salary ) as twolead from EMPLOYEE_TEAM

--Calculate the diffrence in the salary of employee from lowest to highest 
select *, lead( salary ,1,-1) over ( order by salary ) as leading,
salary - lead (salary) over ( order by salary) as diffsal from EMPLOYEE_TEAM

--LAG
select * from EMPLOYEE_TEAM
select*, lag( salary) over ( order by salary) as lagging from EMPLOYEE_TEAM

select*, lag( salary,1,-1) over ( order by salary) as lagging from EMPLOYEE_TEAM

--Calculate the diffrence in the salary of employee from lowest to highest 
select *, lag(salary ,1,-1) over (order by salary) as lagging,
salary -lag(salary) over ( order by salary) as saldiff from EMPLOYEE_TEAM

CREATE TABLE EmployeeSalaries (employee_ID varchar(20), salary int, year int);

INSERT INTO EmployeeSalaries (employee_ID, salary, year) VALUES (1,80000,2020);
INSERT INTO EmployeeSalaries (employee_ID, salary, year) VALUES (1,70000,2019);
INSERT INTO EmployeeSalaries (employee_ID, salary, year) VALUES (1,	60000,	2018);
INSERT INTO EmployeeSalaries (employee_ID, salary, year) VALUES (2,	65000,	2020);
INSERT INTO EmployeeSalaries (employee_ID, salary, year) VALUES (2,	65000,	2019);
INSERT INTO EmployeeSalaries (employee_ID, salary, year) VALUES (2,	60000,	2018);
INSERT INTO EmployeeSalaries (employee_ID, salary, year) VALUES (3,	65000,	2019);
INSERT INTO EmployeeSalaries (employee_ID, salary, year) VALUES (3,	60000,	2018);
INSERT INTO EmployeeSalaries (employee_ID, salary, year) VALUES (3,	70000,	2020);

select * from EmployeeSalaries

--Given the above table, can you write a SQL query to return the employees who have
--received at least 3 year over year raises based on the table's data

select employee_id from
(select*, lag(salary) over ( partition by employee_id order by salary, year) as pre_sal 
from EmployeeSalaries ) as temp
group by employee_id 
having min( salary - pre_sal) >0

--SQL Server Funtions.
--1.UPPER()
--UPPER() Function converts value / column into upper case 
--UPPER() Function requires 1 argument.
--Synatx: UPEER(String/ Column)

select upper('azhar');

select *,upper(employee_name) from employee;

--2.LOWER()
--LOWER() Function converts value / column into lower case. 
--LOWER() Function requires 1 argument.

--Synatx: UPEER(String/ Column)

select lower('AZHAR');

select * , lower(employee_name) as lower_case from employee;

--3.Substring
--Substring function is used to extract particular characters from string.
--Substring function requires always 3 parameters/ argument(s).

--Syntax:
--SUBSTRING(Value/string/Column_Name,Start, END[Length])

--From string 'CDS CODE Solution' want to extract only CDS

select substring ('CDS CODE Solution',1,3) 

select * from employee

--From employee table extract employee name first letter in lower case

select *,SUBSTRING(lower(employee_name),1,1) as string from employee;

--DATALENGTH() - This function returns data type length/ simple size of that particular text.
--LEN() - This function is used to find length of string/text.

--synatx:
--DATALENGTH(String/Text/Column_Name)
--LEN(String/Text/Column_Name)

select len(' az har ' );

select DATALENGTH(' az har ' )

select DATALENGTH('CDS C   ')--pure data ki length --8
select len('CDS C    ')--text ki length --5

create table len_check(LID int, FirstName varchar(50))

insert into len_check values (1, 'AMAR'),(2, 'KIRAN'),(3, 'Dhanajay'),
(4, 'Manikantta'),(5, 'Madhavan     ')

select *, len(firstname) as len , DATALENGTH(firstname) as datalength from len_check

--5.CONCAT(),CONACT_WS() and CONCAT with +
--CONCAT
--Concat functions are used to add two or more strings or columns together.

--Synatx:
--CONCAT(string1/column1,string2/column2)

exec sp_help employee;

select concat('azhar','@',123,getdate())

select * from employee;
 
select *,concat(employee_name , ' ', dept) as adding from employee;
select *,concat_ws('@',employee_name , dept) as adding from employee;
select *,employee_name+ dept as adding from employee;

--6.LTRIM,RTRIM and TRIM
--LTRIM function removes leading(Left side of string) spaces from string.
--RTRIM function removes Trailing(right side of string) spaces from string.
--TRIM function removes leading(Left side of string) as well as Trailing(right side of string) spaces from string.

--TRIM = LTRIM + RTRIM 

select len(ltrim('   azhar'));
select datalength(ltrim('   azhar'));

select len(rtrim('   azhar    '));
select datalength(rtrim('   azhar   '));

--7.REVERSE
--REVERSE Function reverses a string and returns the result.

select *, reverse(employee_name) , reverse(employee_id) from employee;
select * from employee;

--8.REPLICATE()
--REPLICATE() Function repeats a string by specified by number of times.

--synatx: REPLICATE(string,integer)

select replicate('azhar',100);

--9.Round()
--ROUND() function rounds a number to a specified number of decimal places

--after decimal range 0-4 = previous number -Ex:5.0.5.1,5.2,5.3,5.4 = 5
--after decimal range 5-9 = Next number     -Ex:5.5.5.6,5.7,5.8,5.9 = 6

--syntax:ROUND(NUMERIC_EXPRESSION,length[(Function)])

--NUMERIC_EXPRESSION : It takes the number to be round-off.
--length: The number of digitis that we want to round off.
--If length is +ve then rounding is applied after decimal  and if length is -ve then rounding is applied before decimal.

--Function: is used to indicate rounding or truncation operation.
--			0 - Indicates rounding
--	 NON-ZERO - Indicates truncation , by default it is 0.

select ROUND(876.234,1)

select ROUND(876.234,1,0)
select ROUND(876.234,1,1)

select ROUND(876.254,1,0) -- Rounding
select ROUND(876.254,1,1) -- Truncating

select ROUND(876.2546234567890,3,0) -- Truncating

--10.Replace
--REPLACE() function replaces all occurances of a substring within string , with new string.

--synatx: REPLACE (String/col_Name,oldString/old_Value,New_string/New_Value)

select replace('pune','e','a')

--In the below string count 'g' character.
'asdfghjklkjhgfdsgggffdddatuctfuvg'

select replace('asdfghjklkjhgfdsgggffdddatuctfuvg','g','')

select len('asdfghjklkjhgfdsgggffdddatuctfuvg')-len(replace('asdfghjklkjhgfdsgggffdddatuctfuvg','g',''))

--11.Convert()
--Convert() function converts a value (of any type) into specified data type.

--Syntax:CONVERT(data_type[(length)],Expression/Col_name,[(Style)])

select convert(varchar(2),getdate(),10);

select CONVERT(varchar,getdate())

create Table Employee_DOJ(EID int,EMP_NAME varchar(20),EMP_DOJ datetime)

insert into Employee_DOJ values (1,'Praveen',GETDATE()-900),(2,'Rohit',GETDATE()-725),
(3,'Varun',GETDATE()-612),(4,'Mohan',GETDATE()-210),(5,'Kiran',GETDATE()-368)

select * from Employee_DOJ

select *, CONVERT (varchar,EMP_DOJ,105) as DOJ from Employee_DOJ

--Converting datetime to character:
--Without		With 	  Input/Output					Standard
--century		century
--0				100		  mon dd yyyy hh:mi AM/PM		Default
--1				101		  mm/dd/yyyy					US
--2				102		  yyyy.mm.dd					ANSI
--3	            103		  dd/mm/yyyy	                British/French
--4	            104		  dd.mm.yyyy	                German
--5				105	      dd-mm-yyyy					Italian
--6				106		  dd mon yyyy	                -
--7	            107	      Mon dd, yyyy	                -
--8	            108	      hh:mm:ss	                    -
--9	            109	      mon dd yyyy hh:mi:ss:mmmAM (or PM)	Default + millisec
--10	        110	      mm-dd-yyyy	                USA
--11			111		  yyyy/mm/dd					Japan
--12			112	      yyyymmdd						ISO
--13			113	      dd mon yyyy hh:mi:ss:mmm		Europe (24 hour clock)>
--14			114	      hh:mi:ss:mmm					24 hour clock
--20			120	      yyyy-mm-dd hh:mi:ss			ODBC canonical (24 hour clock)
--21			121	      yyyy-mm-dd hh:mi:ss.mmm		ODBC canonical (24 hour clock)
-- 				126	      yyyy-mm-ddThh:mi:ss.mmm		ISO8601
-- 				127	      yyyy-mm-ddThh:mi:ss.mmmZ		ISO8601 (with time zone Z)
-- 				130	      dd mon yyyy hh:mi:ss:mmmAM	Hijiri
-- 				131	      dd/mm/yy hh:mi:ss:mmmAM		Hijiri

--12.Cast()
--This function is used to convert a value into a specified data type.


--synatx:cast (expression/Col_Name as data_type [(length)])

select cast( getdate() as varchar);

select * from Employee_DOJ

select *,CAST(EMP_DOJ as varchar) as DOJ from Employee_DOJ

select *,Convert(Varchar,EMP_DOJ,105) as DOJ from Employee_DOJ

--13.CHARINDEX()
--CHARINDEX() function searches for a substring in a string and returns position.
--If substring is not found , this function returns 0.

--Syntax:CHARINDEX(partofstring,string,[start])

select *, charindex('a',emp_name) as position from Employee_DOJ

--Domain
--Praveenpatil@ibm.com
--KiranKumar@hcl.com

select charindex('@','KiranKumar@hcl.com')

select substring('KiranKumar@hcl.com',charindex('@','KiranKumar@hcl.com'),len('KiranKumar@hcl.com'))

Create Table Domain_ID(ID int , EMP_NAME Varchar(20),DOJ datetime ,City Varchar(20),Email varchar(200))

insert into Domain_ID values (1,'Sumit',GETDATE()-300,'PUNE','sumit.b@infosys.com'),
(2,'Meena',GETDATE()-460,'Mumbai','meena.p@amazon.com'),(3,'Suman',GETDATE()-370,'Chennai','Suman.s@Wipro.com')
,(4,'Praveen',GETDATE()-300,'PUNE','Praveen.patil@westpac.com')

select * from Domain_ID

select *, 
substring(email,1,charindex('@',email)-1) as name,
substring(email,charindex('@',email)+1,len(email)) as domain
from Domain_ID;

--Question
--Full Name 
--Praveen Patil
--Kiran More
--Kapil Dev
--Rohit Sharma
--Anil Kumble

--Output
--FirstName		LastName
--Praveen		Patil
--Kiran			More
--Kapil			Dev
--Rohit			Sharma
--Anil			Kumble

create table abc (fullname varchar(20));

insert into abc values('Praveen Patil'), ('Kiran More'),('Kapil Dev'),('Rohit Sharma'),('Anil Kumble')

select * from abc 

select SUBSTRING(fullname,1,charindex(' ',fullname)-1) as firstname,
substring(fullname,charindex(' ',fullname)+1,len(fullname)) as lastname
from abc

--Views
--It is virtual table.
--It is copy of original table.
--We can perform some DML and DDL operations on views.

--syntax:
--create view vVIEW_NAME 
--as
--SQL Statements 

select * from employee;

--create a view on employee table whose salary is greater than 5000
create view vEmp_sal
as
select * from employee where employee_salary>5000

--How to select view?
select * from vEmp_sal;
--how to drop a view?
drop view vEmp_sal;

--Views can be created by using only one SELECT statement into it.
create view v_emp_doj_details 
as
select * from employee
select * from Employee_DOJ

--Note : we can use only one SELECT statement inside view.

--Verify insert records into views and those can be reflected in table and vice-versa.
create view vEmp_DOJ
as
select * from employee where year(Employee_DOJ) >= '2021'

select * from Employee
select * from vEmp_DOJ

--inserting into views
insert into vEmp_DOJ values (4,'Priya','Jalandhar',9200,'2023-05-21','it')

--Deleting from view 
delete from vEmp_DOJ where Employee_ID = 10

--updating view will reflect into main table 
update vEmp_DOJ SET Employee_City = 'BANGLORE' where Employee_ID = 1

--Alter view 
alter view vEmp_DOJ
as
select * from employee where year(Employee_DOJ) > '2021'

select * from vEmp_DOJ

update vEmp_DOJ set employee_city = case
when employee_id>6 then 'pune'
when employee_id<6 then 'mumbai'
end 

--Store Procedure (SP)
--It is block of code to perform certain action whenever it is nedeed.
--Block code we are storing at one particular area and which we want to use again and again
--and that storage are we are going refer it as Store Procedure.
--It is working like fuction.

--Synatx:
--Create procedure / proc spSTORE_PROCEDURE_NAME
--[(@parametrs) <Data Type> <SIZE>]
--AS
--BEGIN
--SQL STATEMENTS 
--END

--Two Types of SP.
--1.WITHOUT PARAMETER 
--2.WITH PARAMETER

--1.WITHOUT PARAMETER 
create procedure sp_two_select 
as
begin
select * from orders
select * from sales
end



--2. WITH Parameter
create procedure sp_two_select 
@Customer_ID int,
@salesmonth varchar(20)
as
begin
select * from orders where CustomerID=@Customer_ID
select * from sales where sale_month=@salesmonth
end

sp_two_select 4,'aug';

exec sp_two_select 4,'jun'

drop proc sp_two_select

-- can you try to write simple store procedure in that if I give dept_name then I should get dept ID.
create proc  spget_deptid
@dept varchar(20)
as 
begin
select employee_id,dept from employee where dept=@dept
end 

spget_deptid 'testing';

spget_deptid 'development';

create proc spget_update 
@employee_id int,
@employee_salary int,
@employee_city varchar(20)
as
begin
update employee set employee_salary=@employee_salary,employee_city=@employee_city
where employee_id=@employee_id
end

select * from employee;

spget_update 1,7700,'maha';

--Diffrence Between View and Store Procedure 
--VIEW												--Store Procedure(SP)
--1.Views can accepts only one SELECT statement.	--1.SP can accepts Several SELECT statement.
--2.Views acts as Virtual Table.					--2.SP Acts as function
--3.Views does not accept parameters				--3.SP accepts parametars.

--Q.How to test view?
--While testing view first of all we need to understand the purpose of that view.
--Why the view is created or for what purpose view is created.
--If you want view script of view to understand the logic of view.

exec sp_helptext vEmp_DOJ;

--Q.How to test Store Procedure?
--While testing SP we have to make sure which are the tables are impacting.
--all the impacted tables data should be extract and keep copy of that data before executing SP.
--We need to undesrtand the purpose of creating SP from requirement document.
--To view SP script we can write below SQL query
exec sp_helptext sp_two_select;

--Once the SP is execute then we need to comapre the value before executionof SP and 
--after execution of SP and is working as expected w.r.to requirement.

--Triggers
--Triggers fired automatically, Once you perform INSERT, DELETE and UPDATE operation on table.
--We can define three types of triggres on table 
--INSERT, DELETE and UPDATE.
--Triggers are also called as special kind of store procedure.

--Synatx:
--Create trigger trTrigger_Name
--ON Table_Name
--FOR INSERT/ DELETE/ UPDATE
--as
--BEGIN
--SQL Satements
--END

--INSERT TRIGGER
select * from Domain_ID

--Before defining insert trigger on a table?
insert into Domain_ID values (5,'amit',GETDATE()-302,'hyd','amit.b@infosys.com')

create trigger trforinserted
on Domain_ID
for insert
as
begin
select * from inserted
end

drop trigger trforinserted;

--DELETE TRIGGER 
create trigger trfordeleted
on domain_id
for delete
as
begin
select * from deleted
end

delete from domain_id where id=5

select * from domain_id

drop trigger trfordeleted

--UPDATE trigger 
update=insert+delete

create trigger trforupdated
on domain_id
for update
as
begin
select * from deleted
end;

drop trigger trforupdated
update Domain_ID set city='jalna' where id=1;

AND COLUMN_NAME = 'Dept_ID';

--How to alter triggers 
alter trigger trforupdated
on Domain_ID
for update 
as 
begin
select * from inserted
select * from deleted
end 

update Domain_ID set city = 'bangloru' where id = 1;

--We will record trigger information into a separate table so that we can keep
--track on all the trigger activities on a table.

-- we will record all the trigger information into one table so that we can easily understand
-- whyen the records are inserted , updated and deleted .

create table DML_Recordinformations (c_id int identity ,record_info varchar(500));
select * from Customer
select * from DML_Recordinformations
drop table DML_Recordinformations

--Create trigger which record Insert information into table

create trigger tr_info_insert
on [dbo].[Cutomer] 
for insert
as 
begin
	declare @c_id int
	select @c_id=customerID from inserted
insert into DML_Recordinformations values(cast(@c_id as varchar)  + ' ' +' insetted at ' +
cast(getdate() as varchar))
end

insert into [dbo].[Cutomer] values(5,'azhar','india');
sp_help [dbo].[Cutomer]

select * from Cutomer
select * from DML_Recordinformations;

--Create trigger which record DELETE information into table 
create trigger tr_delete_info
on cutomer
for delete
as 
begin
	declare @c_id int
	select @c_id=CustomerID from deleted
insert into DML_Recordinformations values (cast(@c_id as varchar) +
' deleted at' + cast(getdate() as varchar)) 
end;

select * from Cutomer
select * from DML_Recordinformations;

delete from Cutomer where CustomerID=2;

--Create trigger which record UPDATE information into table

create trigger tr_UPDATE
on cutomer
for update
as
begin
Declare @c_id int
Declare @desh varchar(20)
select @c_id =customerID,@desh = country from deleted
select @c_id =customerID,@desh = country from inserted
insert into DML_RecordInformations values ('For employee ID ' + CAST(@c_id as
varchar) + ' City ' + @desh +
' is updated at ' + cast(GETDATE() as varchar))
end

select * from cutomer
select * from DML_RecordInformations

update cutomer set country='uk' where CustomerID=5;

--INDEX
--INDEX are used to retrive the data from the database more quickly or faster than anything.
--User can not see the index but they are used to speed up the searches.
--syntax:
--CREATE INDEX IX_INDEX_NAME
--ON Table_NAME(col1,col2,...coln)
--Two types of indexes
--1. Clustered , unique index
--2. non-clustered, non-unique index

--1.Clustred Index
--We can define or create only one clustred index in on a table
--if we define table with primary key column then automatically clustered index will be difined.
--Clustred index is same as dictionary where data is arranged by alphabetical order.
--In clustred index, Index contains pointer to block but not direct data.
--syntax:
--create clustered index IX_Index_Name
--ON Table_Name(Col1,col2....coln etc)


create table index_info (id int identity primary key,index_name varchar(20));

select * from index_info;

exec sp_help index_info

create index ix_new
on index_info (id,index_name)

--How to drop index ?
--Synatx: CDS Code Solution
--DROP INDEX TABLE_NAME.INDEX_NAME

drop index index_info.ix_new



--2.Non-Clustred Index
--Non_Clustred index is similar to index of text book.
--Index of book consists of chapter name and page number.
--If we want to read any topic then you can directly go to that page number by using index.
--No need to go through each and every page of book.
--The data is stored in one place and index is stored in another place.
--We can have multiple non-clustred index on table.
--syntax:
--create nonclustered index IX_Index_Name
--ON Table_Name(Col1,col2....coln etc)

create nonclustered index ix_index_info
on employee_test(empid,department)

--verifying clustered index and non-clustered index
--before index created
select * from employee_test where Department = 'Testing1170656' --00:00:15 sec
--after index created
select * from employee_test where Department = 'Testing1170656' --00:00:00 sec

--Diffrence between clustered index and non-clustered index
--clustered index                                       nonclustered index
--1.clustered index is faster                           1.non-clustered index is slower
--2.clustered index requires less memory                2.non-clustered index requires more memory for
-- for operations.                                      operations.
--3.in clustered index, index is the main data.         3.in non-clustered index, index is the copy data.
--4.A table can have only one clustered index.          4.A table can have multiple non-clustered index.
--5.clustered index store pointers to block of          5.non-clustered index store both value and a pointer
-- data                                                 to actual row that holds data.

--PIVOT and UNPIVOT
--PIVOT
--The PIVOT operation allows you to convert rows into columns.
--PIVOT operation that can be used to extract unique values from one column into 
--multiple columns into the o/p.
--Convert single column to multiple columns 

--syntax:
--SELECT column1, column2, ...,
-- [aggregate_function(column_to_aggregate)]
--FROM table_name
--PIVOT (
-- aggregate_function(column_to_aggregate)
-- FOR pivot_column
-- IN ([value1], [value2], ..., [valueN])
--) AS pivot_table_alias;
--column1, column2, ...: Columns that you want to select in addition to the pivoted columns.
--aggregate_function(column_to_aggregate): An aggregate function (e.g., SUM, AVG, COUNT)
-- applied to the column you want to aggregate.
--table_name: The name of the table containing the data.
--pivot_column: The column used for pivoting.
--[value1], [value2], ..., [valueN]: The distinct values of the pivot column that
-- will become the columns in the result set.
--pivot_table_alias: An alias for the resulting pivoted table.

--sales data for different AGENTS in various COUNTRY
create table Sale (agent varchar(100),country varchar(100) , sales int)
insert into Sale values ('John','UK',200)
insert into Sale values ('Tom','US',190)
insert into Sale values ('John','UK',450)
insert into Sale values ('David','India',120)
insert into Sale values ('Tom','India',240)
insert into Sale values ('David','US',660)
insert into Sale values ('Tom','US',320)
insert into Sale values ('John','India',280)
insert into Sale values ('John','UK',540)
insert into Sale values ('David','US',130)
insert into Sale values ('Tom','US',220)
insert into Sale values ('Tom','UK',290)
insert into Sale values ('John','India',400)
insert into Sale values ('David','India',300)
insert into Sale values ('Tom','UK',280)
insert into Sale values ('David','UK',400)
insert into Sale values ('John','US',700)
select * from sale

--If we pivot the table based on the "Country" column,
--we can obtain a summary of sales for each Agent in separate columns for each Country

select agent, INDIA, UK, US from sale
PIVOT(
 sum(sales)
FOR country
IN (INDIA,UK,US)
) as pivot_data

select * from sale


create table input (id int, name varchar(50), role varchar(50));
insert into input values(100,'sas','admin');
insert into input values(101,'fas','trustee');
insert into input values(102,'fed','prof');
insert into input values(100,'sas','owner');
insert into input values(101,'fas','garantor');
insert into input values(100,'sas','manager')
select * from input;

id	  name	role
100	  sas	admin
101	  fas	trustee
102	  fed	prof
100	  sas	owner
101	  fas	garantor
100	  sas	manager

--output like
id     names   roles
101    fas     trustee,garantor
102    fed     prof
100    sas     owner,manager,admin

SELECT id, name AS names, GROUP_CONCAT(role) AS roles
FROM input
GROUP BY id, name



SELECT id, name, STRING_AGG(role, ', ') AS roles
FROM input
GROUP BY id, name;


--UNPIVOT
--The UNPIVOT operation is the opposite of the PIVOT operation.
--It allows you to convert columns into rows, transforming a pivoted result set CDS Code Solution
--back to its original form.

--Syntax:
--SELECT column1, column2, ..., unpivot_column, unpivot_value FROM Table_name
--UNPIVOT (
-- unpivot_value FOR unpivot_column
-- IN (pivot_column1, pivot_column2, ...)
--) AS unpivot_table_alias;
--column1, column2, ...: Columns that you want to select in addition to the unpivoted columns.
--unpivot_column: The column that will contain the column names from the pivoted table.
--unpivot_value: The column that will contain the values from the pivoted table.
--pivot_column1, pivot_column2, ...: The columns to be unpivoted.
--table_name: The name of the table containing the pivoted data.
--pivot_table_alias: An alias for the pivoted table used in the subquery.
--unpivot_table_alias: An alias for the resulting unpivoted table.

create table Product (Product varchar(20),Q1 int, Q2 int, Q3 int,Q4 int)

insert into Product values ('Product A',100,200,150,300)
insert into Product values ('Product B',120,180,220,250)

select * from Product

--SELECT column1, column2, ..., unpivot_column, unpivot_value FROM Table_name
--UNPIVOT (
-- unpivot_value FOR unpivot_column
-- IN (pivot_column1, pivot_column2, ...)
--) AS unpivot_table_alias;

select Product,Quarters, Sales from Product
UNPIVOT(
Sales
FOR Quarters
IN (Q1,Q2,Q3,Q4)
) as unpivoted.

--------------------------------------end of cds sql------------------------------------------
---------------------------------------------------------------------------------------------------------
--Display those name pattern whose second last charecter is 'A'
select * from employee where name like '%A_';

--we want to extract employee whose id is not 1,6 and 11  
select * from employee where id not in (1,6,11);

--Increase salary by 20% of those employees whose employee id is even?
select *, new_salary=salary+(salary*0.2) from employee where employee_id%2=0;


--Diaplay those names whose name start with S,C,K.
select * from employee where emp_name like '[SCK]%';

--Diaplay those names whose name does not start with S,C,K.
select * from  employee where emp_name like'[^SCK]%';

--if we found any special symabol'@' in string and we want to display those strings then 
select * from employeee where emp_nbame like '[%@%]';

--Q.Suppose in my table if i have name like SUMIT_BHOSALE then how will you extract those records?
select * from employee where emp_name like '[%_%]';

--Display minimum salary of employee from employee table.
select min ( salary) as min_sal from employere;

--Find second minimum salary by sub query 
select min ( salary) as sec_min_ salary from employees
where salary > ( select min ( salary) from employees);

--Find third minimum salary by sub query 
select min( salary) as third_min_ salary from employees where salary >(select 
min ( salary) from employees where salary >(salect min(salary) from employees));

--select 50% records from table
select top 50 percent from employees ;

--Select Top 5 records whose salary is low
select top 5 from employee order by salary asc;

--6th hihest salary from an employee
select min ( salary ) as sixth_ sal from employee where salary in
( select top 6 salary from employee order by salary desc);

--whenever we want to select multiple columns in distinct clause then we need to 
enclose all the columns in round bracket.
 select distinct(id, name ) from employees ;

 select count(distinct(id,name)) from employees ;

 --Find out NULL records in student_Name column?
 select student_name where student_name is null;

 --if you want find empty/blank values from column
select * from emplouyee where student_name =' ';

create table departnent ( id int identity(1,2) primary key, name varchar(20) unique not null ,
state varchar(50) default 'maharashtra',age int check ( age=>20 and age<=30) , did int foreign key references 
loc (did));

--Q.count number of cutomers in order type table category wise?
select category, count(*) from order_type group by category

--Q.Find out the total price of each category with respect to all the customers.
select category, sum(price) as total from order_type 
group by category;

--Find out the maximum price of each category?
select category, max(price) from order_type group by category;

--Find out only those category whose customer base is greater than 2?
select category , count(*) from order_type group by category having count(*)>2;

--Q.Find out only those category of products whose total value is greater than 10000?
select category , sum(price) from order_type group by category having sum(price) >1000
order by sum( price) ;

--Q.Find out total value of each category and min and maximum values of each category along 
--with its avg value is grater than 5000?
select category, sum(price),max(price),min(price),avg(price) from order_type
group by avg(price) having avg(price)>5000 order by category;

--Update city of an employee to Tirupati whose salary is fourth highest among all the employees
update employee set employee_city='tirupati' where salary in 
(select min ( salary ) from employee where salary in  ( select top 4 salary from employees order by 
salary desc))

--1We can add one or more columns at a time into table.1
alter table table_name add col1 varchar(20),col2 int 

--2.We can delete or remove one or more columns from table.
alter table table_Name drop column col1;

--4.We can change the data type of column of table.
alter table table_name alter column col1varchar(50);

--Table name change
exec sp_rename 'old_name','new_table';

--Column Name change
exec sp_rename'table_name.old_col_name','new_col_name';

--many tables has been created in a particular database 

select * from INFORMATION_SCHEMA.tables;

----All the columns related information of each and every table
select * from INFORMATION_SCHEMA.columns

--Table Back Up
select * into new_table from new_table;


--If we want to copy only structure not an data 
select * into new_table from old_table where 1=2;

--It will copy structure as well as complete data 
select * from table_new from table_old where 1=1;

select * from Cutomer 
select * from orders 

--Find out total amount for each employee who has completed order?

Select C1.CustomerID,C1.CustomerName,O1.TotalAmount from Cutomer C1 JOIN orders O1 
ON C1.CustomerID=O1.CustomerID

--Find out total amount ofall the orders which has been done by customer either on
--same date or diffrent date.
select c1.customerid,c1.customername,sum(o1.totalamount) from cutomer c1 join orders o1
on c1.customerid=o1.customerid group by c1.customerid,c1.customername;

--Joining three tables 

select * from states
select * from cities
select * from nusers

--Display User id ,Full Name along with their cities and states.
select n.id,(n.first_name+n.last_name) as fullname,c.cityname,s.statename
from states s join cities c on s.id=c.state_id
join nusers n on c.id=n.city_id

--Display only those customers who is not having any records in order table. 
select * from Cutomer 
select * from orders 

select * from cutomer c left join orders o on c.customerid=o.customerid;

select * from cutomer c left join orders o on c.customerid=o.customerid where o.customerid is not null


--Can we convert left join into inner join?YES
--Can we convert inner join into left join?NO

--C.FULL OUTER JOIN / FULL JOIN
--Full Join= Left join + Right Join
--Full join will display all the records from both the tables 
--If the records are matching from both the tables then it will show all those records and 
--along with that it will display NUll for non-matching records from both the tables.

select * from cutomer c fulljoin
 orders o on c.customerid=o.customerid;
----------------------------------------------------------------------------------------------------------
create table tableA (value int)
insert into tableA values(1);
insert into tableA values(1);
insert into tableA values(2);
insert into tableA values(4);
select * from tableA;

create table tableB (value int)
insert into tableB values(1);
insert into tableB values(2);
insert into tableB values(4);
insert into tableB values(null);
select * from tableB;
select * from tableA;

--1.inner join 2.left join 3.right join 4.full join 5.cross join
select * from tableA a full join tableB b on a.value=b.value;

select a.value from tableA a cross join tableB b

create table tableA (value int)
insert into tableA values(1);
insert into tableA values(1);
insert into tableA values(1);
insert into tableA values(2);
insert into tableA values(3);
insert into tableA values(3);
insert into tableA values(3);


select * from tableA;
drop table tableA;
drop table tableB;

create table tableB (value int)
insert into tableB values(1);
insert into tableB values(1);
insert into tableB values(2);
insert into tableB values(2);
insert into tableB values(4);
insert into tableB values(null);
select * from tableB;
select * from tableA;

--1.inner join 2.left join 3.right join 4.full join 5.cross join
select * from tableA a full join tableB b on a.value=b.value;

select a.value from tableA a cross join tableB b

--Q. by using self join we can decode the following
code  name   lead  manager
c     ram     b     a
b     varun   a     c
a     arun    c     b

create table info (code varchar(20),name varchar(20),lead varchar(20),manager varchar(20));
insert into info values ('c','ram','b','a');
insert into info values ('b','varun','a','c')
insert into info values ('a','arun','c','b')

select * from info

select t1.code,t1.name,t2.name as lead, t3.name as manager from
info t1 join info t2 on t1.lead=t2.code
join info t3  on t1.manager=t3.code

SELECT t1.code, t1.name, t2.name AS lead, t3.name AS manager
FROM your_table t1
JOIN your_table t2 ON t1.lead = t2.code
JOIN your_table t3 ON t1.manager = t3.code;

code  name   lead   manager
c     ram    varum  arun
b     varum  arun   ram
a     arun   ram    varum

------------------------------------------------------------------------------------------------------

col
1
2
-3
-6
-8
-9
ouput: positive  negative
         2          -8

SELECT SUM(CASE WHEN col > 0 THEN col ELSE 0 END) AS positive,
       SUM(CASE WHEN col < 0 THEN col ELSE 0 END) AS negative
FROM your_table;

create table tablex (col int)
insert into tablex values(1);
insert into tablex values(2);
insert into tablex values(-3);
insert into tablex values(-6);
insert into tablex values(-8);
insert into tablex values(-9);
 

select * from tablex

select max(col) as positive from tablex
select max(col) as negative from tablex where col in (select top 2 * from tablex order by col asc)

select 
(select max(col) from tablex) as positive ,
(select max(col)  from tablex where col in (select top 2 col from tablex order by col asc)) as neagtive;

---------------------------------------------------------------------------------------------------------
--Q.There are two tables emp  and salary. Emp has two columns id, name Salary has two columns id, sal.
--Write a query to get 3rd max sal with name. Dont use dense rank

create table emps (id int , name varchar(20));
select * from emps;
insert into emps values(1,'azhar'),(2,'mirza'),(3,'arham'),(4,'xyz'),(5,'pqr');

create table sals(id int , sal int);
select * from sals;
insert into sals values(1,1000000),(2,2500000),(3,1740000),(4,25410),(5,77777);

-- by using dense_rank
select * from
(select e.name,s.sal,dense_rank() over(order by s.sal desc) as rnk from emps e join sals s on
e.id=s.id )as temp where rnk=3;

--without using 
select min(s.sal) as third_max_sal from emps e join sals s on e.id=s.id where s.sal in 
( select top 3 s.sal from emps e join sals s on e.id=s.id order by s.sal desc)

--by using sub_query
select max(s.sal) as third_max_sal from emps e join sals s on e.id=s.id where s.sal <
(select max(s.sal) from emps e join sals s on e.id=s.id where s.sal <
(select max(s.sal) from emps e join sals s on e.id=s.id))

select constraint_type,table_name,CONSTRAINT_NAME from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
where TABLE_NAME='uidai';

--------------------------------------------------------------------------------------------------------

--Display the name of team,no. Of matches played,no. Of matches won,no of losses

create table icc_world_cup
(Team_1 Varchar(20),
Team_2 Varchar(20),
Winner Varchar(20));
INSERT INTO icc_world_cup values('India','SL','India');
INSERT INTO icc_world_cup values('SL','Aus','Aus');
INSERT INTO icc_world_cup values('SA','Eng','Eng');
INSERT INTO icc_world_cup values('Eng','NZ','NZ');
INSERT INTO icc_world_cup values('Aus','India','India');



select * from icc_world_cup;

--Display the name of team,no. Of matches played,no. Of matches won,no of losses

SELECT Team AS Team_Name,
    COUNT(*) AS Matches_Played,
    SUM(CASE WHEN Team = Winner THEN 1 ELSE 0 END) AS Matches_Won,
    SUM(CASE WHEN Team != Winner THEN 1 ELSE 0 END) AS Matches_Lost
FROM (SELECT Team_1 AS Team, Winner FROM icc_world_cup
        UNION ALL
        SELECT Team_2 AS Team, Winner FROM icc_world_cup) AS matches GROUP BY Team;

---------------------------------------------------------------------------------------------------------

--Q.How we fetch last 60% records from table if I am having 150 records in a table?
select * from emp
select top 60 percent id from emp order by id desc ;




--Q.What is the difference between

Select count (*) from emp-----count=10
Select count (99) from emp----count=10
select count(6) from emp-------count=10

Select count (id) from emp----count=9

select count(99)

select count(10,11)--The count function requires 1 argument(s).

--------------------------------------------------------------------------------------------------
--Q.how to fetch weekends (sat & sun) of current month.
SELECT *
FROM your_table
WHERE DATEPART(month, your_date_column) = DATEPART(month, GETDATE())
  AND DATEPART(weekday, your_date_column) IN (1, 7);

SELECT DATEPART(WEEKDAY, [DateColumn]) AS WeekdayNumber,
       DATENAME(WEEKDAY, [DateColumn]) AS WeekdayName,
       [DateColumn]
FROM [YourTable]
WHERE MONTH([DateColumn]) = MONTH(GETDATE())
  AND DATEPART(WEEKDAY, [DateColumn]) IN (1, 7)

------------------------------------------------------------------------------------------------------
--Q.Write SQL query to fetch current city and name
create table emp_detail(id int, joining datetime,city varchar(20));
insert into emp_detail values(1,'2020-10-01','mumbai')
insert into emp_detail values(1,'2022-11-01','pune')
insert into emp_detail values(2,'2018-10-01','goa')
insert into emp_detail values(2,'2002-10-01','nashik')

select * from emp_detail;

alter table emp_detail add name varchar(20)

update emp_detail set name ='shayam' where id=1
update emp_detail set name ='aman' where id=2

--Q.Write SQL query to fetch current city and name
select * from (select *,row_number() over (partition by name order by joining desc)as new 
from emp_detail)temp where new=1

---------------------------------------------------------------------------------------------------------
--'building' skip first 3 and last 3 letters from word
select substring('building',4,2)

select trim('bui,ing' from 'building')as xyz

-----------------------------------------------------------------------------------------------------------
--Q.7. If you have table having column eid ,ename, emobileno.,ehomeno, eofcno. 
--You have  to add last 3 column
--as econtact and if first column has no value it must show result ftom last two column
select * from emp_info
create table emp_info (eid int ,ename varchar(20),emobileno int,ehomeno int, eofcno int)
insert into emp_info values (1,'ab',12,23,34)
insert into emp_info values (null,'xy',52,63,74)
select case when eid=not null then concat(emobileno+ehomeno+eofcno) else
else-------------------------------------please solve carefully

select coalesce(eid,emobileno,ehomeno,eofcno) as econtact from emp_info
select* from emp_info
---------------------------------------------------------------------------------------------
--Q.Show data from even row no. And skip every alternate number like 2, 6, 10 no.
select * from emp where id%2=0

---------------------------------------------------------------------------------------------
--
which column we cannot delete bu singb alter
create table pqrs( id int primary key , name varchar(20))
select * from pqrs

alter table pqrs add city varchar(20)

alter table pqrs drop column id

--The object 'PK__pqrs__3213E83F61974B22' is dependent on column 'id'.
--Msg 4922, Level 16, State 9, Line 2948
--ALTER TABLE DROP COLUMN id failed because one or more objects access this column.
-----------------------------------------------------------------------------------------------------
--3 tables join and find 3rd max sal
-- by using dense_rank
select * from
(select e.name,s.sal,c.city,dense_rank() over(order by s.sal desc) as rnk from emps e join sals s on
e.id=s.id join city c on s.id=c.id)as temp where rnk=3;


select min(s.sal) as third_max_sal from emps e join sals s on e.id=s.id join city c on s.id=c.id where s.sal in 
( select top 3 s.sal from emps e join sals s on e.id=s.id join city c on s.id=c.id order by s.sal desc)

-----------------------------------------------------------------------------------------------------------------------
-- Find 6th highest salary from table If there is not 6th highest salary the query should report null Ans ?
 SELECT
  CASE WHEN COUNT(DISTINCT salary) >= 6 THEN MAX(CASE WHEN rank = 6 THEN salary END)
  ELSE NULL END AS sixth_highest_salary
FROM (SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS rank FROM Employees) ranked_salaries

----------------------------------------------------------------------------------------------------------
--Q.How to fetch only col_name and col_size in a particular table
select column_name,data_type,col_length('dbo.emp',column_name) as size from information_schema.columns where
table_name='emp'
-------------------------------------------------------------------------------------------------------------

create table rating (id int , itemid int,price float,pricerating varchar(20));
select * from rating
insert into rating values (1,100,34.5,'expensive')
insert into rating values (2,145,2.3,'cheap')
insert into rating values (3,100,34.5,'expensive')
insert into rating values (4,145,100,'affordable')

select count(*) as counting from rating where pricerating='expensive'

select count(case when pricerating='expensive' then 'expensive' end) as counting from rating
------------------------------------------------------------------------------------------------------------
--Q.what is the difference between len and datalength
select len(' cds ') as len---in len leading space consider but trailing space not consider
select datalength(' cds ') as datalength--both leading and trailing length consider
-------------------------------------------------------------------------------------------------------------
--Q. split wight in kgs,gms
create table mass_table ( weight float );
insert into mass_table values(5.67),(34.567),(365.253),(34) 
select * from mass_table
drop table mass_table
select*,
case when weight like '%.%' then substring(weight,1,charindex('.',weight)-1) end as kg,
when weight like '%.%' then substring(weight,charindex('.',weight)+1,len(weight)) end as gms
from mass_table 

 select *,
 case when weight>0 then cast(weight as int) end as kg,
 case when charindex('.',weight)!=0 then substring(cast(weight as varchar),
 charindex('.',weight)+1,len(weight))
 else 0 end as gms
 from mass_table
---------------------------------------------------------------------------------------------------------
--how to find second oldest employee by using date function?

select * from Bank_Details order by acct_open_date asc


select max(acct_open_date) from Bank_Details where acct_open_date in
(select top 2 acct_open_date from Bank_Details
order by datediff(day,acct_open_date,getdate()) desc);

--By using dense_rank with Temp Table
select * from (select *, dense_rank() over (order by datediff(day,acct_open_date,getdate()) desc) as rnk_date
from Bank_Details ) temp where rnk_date=2;
-----------------------------------------------------------------------------------------------------------------
/*	Q.Display the names, salary, HRA, PF, DA, Total Salary for each employee. The output should be in
the order of total salary, HRA 15% salary ,
DA 10% salary, PF 5% of salary, total salary will be (salary+HRA+DA)-PF.*/

SELECT employee_name,salary,salary * 0.15 AS HRA,salary * 0.10 AS DA,salary * 0.05 AS PF,
(salary + salary * 0.15 + salary * 0.10) - (salary * 0.05) AS Total_Salary
FROM Employees;
--------------------------------------------------------------------------------------------------------
/*Q.	How can you perform a case-insensitive search using the LIKE operator? 
Write a query to retrieve all products whose names contain the word 'phone' regardless of case. */
SELECT * FROM Products WHERE LOWER(product_name) LIKE '%phone%';
-------------------------------------------------------------------------------------------------------------
/*Q.	How do you use the NOT LIKE operator to exclude specific patterns from the result set? Write a query
to retrieve all customers whose email does not end with '@example.com'. */
SELECT * FROM Customers
WHERE email NOT LIKE '%@example.com';
----------------------------------------------------------------------------------------------
/*Q.	Write an SQL query to retrieve all products whose name contains the word 'blue' 
and the word 'shirt' in any order.*/
SELECT * FROM Products WHERE product_name LIKE '%blue%' 
AND product_name LIKE '%shirt%';
-----------------------------------------------------------------------
/*Q.Explain the purpose of the escape character in the LIKE operator and provide 
an example of how to use it.*/
SELECT * FROM Products
WHERE product_name LIKE '%\_%' ESCAPE '\';
-----------------------------------------------------------------------------------
/*Q.How do you use the _ wildcard to match any single character in the LIKE operator? 
Write a query to retrieve all products whose name is three characters long, where the second character is 'X'.*/
SELECT * FROM Products
WHERE product_name LIKE '%\_%' ESCAPE '\';
------------------------------------------------------------------------------------------------------------
/*Q.Explain how square brackets ([]) can be used with the LIKE operator to match a specific set of characters. 
Provide an example to find all customers whose name starts with either 'A', 'B', or 'C'.*/
SELECT *
FROM Customers
WHERE customer_name LIKE '[ABC]%';
-----------------------------------------------------------------------------------------
/*Q.Write an SQL query to retrieve all orders whose order number starts with '2023' followed
by any two digits.*/
SELECT *
FROM Orders
WHERE order_number LIKE '2023__';
---------------------------------------------------------------------------------------
/*Q.Create a query to select all employee names whose 
second letter is 'a' and the name contains the letter 'i' in the third or fourth position.*/
SELECT employee_name FROM Employees
WHERE SUBSTRING(employee_name, 2, 1) = 'a'
  AND (SUBSTRING(employee_name, 3, 1) = 'i' OR SUBSTRING(employee_name, 4, 1) = 'i');
------------------------------------------------------------------------------
/*Q.Write an SQL query to retrieve all products from the "Products" table, sorted first by
the product's category in ascending order, and then by the product's price in descending order.*/
SELECT *
FROM Products
ORDER BY category ASC, price DESC;
-------------------------------------------------------------------------------------------------
/*Q.Explain how NULL values are treated in the ORDER BY clause. Write a query to retrieve 
all employees from the "Employees" table, 
sorted by their hire date in ascending order, with NULL hire dates placed at the end of the result set.*/
SELECT *
FROM Employees
ORDER BY hire_date ASC NULLS LAST;
---------------------------------------------------------------------------------------------------------
/*Q.In the "Customers" table, there is a column "Priority" that stores integer values representing customer 
priority (1 for high priority, 2 for medium priority, and 3 for low priority). Write an SQL query to 
retrieve all customers, sorted by priority in the order of high, medium, and low.*/
SELECT *FROM Customers ORDER BY
  CASE Priority
    WHEN 1 THEN 1
    WHEN 2 THEN 2
    WHEN 3 THEN 3
  END;
-----------------------------------------------------------------------------------------------------------
/*Q.The "Orders" table contains a "quantity" and "unit_price" column. Write an SQL query to retrieve all orders,
sorted by the total value (quantity multiplied by unit price) of each order in descending order.*/
SELECT *, quantity * unit_price AS total_value
FROM Orders ORDER BY total_value DESC;
----------------------------------------------------------------------------------------------------------
/*Q.In the "Products" table, there is a column "product_name" containing product names. Write an SQL query
to retrieve all products, sorted by the length of the product names in ascending order.*/
SELECT * FROM Products
ORDER BY LENGTH(product_name) ASC;
-----------------------------------------------------------------------------------------------------
/*Q.The "Events" table contains two columns: "event_date" and "event_time", representing the date and time 
of each event. Write an SQL query to retrieve all events, sorted by event date in ascending order, and for 
events on the same date, sort them by event time in ascending order.*/
SELECT * FROM Events
ORDER BY event_date ASC, event_time ASC;
---------------------------------------------------------------------------------------------------------
/*Q.The "Students" table has a column "grade," which contains grades such as 'A', 'B', 'C', 'D', and 'F'. 
Write an SQL query to retrieve all students, sorted by their grades in descending alphabetical order
(i.e., 'A' comes before 'B').*/
SELECT * FROM Students
ORDER BY grade DESC;
-----------------------------------------------------------------------------------------------------------
/*Q.Explain how you can use an aggregate function in the ORDER BY clause. Write a query to retrieve all 
departments with the total number of employees in each department, sorted by the number of employees in
descending order.*/
SELECT department, COUNT(*) AS total_employees FROM Employees
GROUP BY department ORDER BY total_employees DESC;
-------------------------------------------------------------------------------------------------------------
/*Q.The "Names" table contains a column "name" with names in different languages. Write an SQL query to retrieve 
all names, sorted in a case-insensitive manner and following a specific collation order
(e.g., 'utf8_general_ci').*/
SELECT name FROM Names
ORDER BY name COLLATE Latin1_General_CI_AI;
-----------------------------------------------------------------------------------------------------------------
/*Q.The "Categories" table has columns "category_id" and "parent_category_id," where "parent_category_id"
references "category_id" to form a hierarchical structure. Write an SQL query to retrieve all categories, 
sorted in a way that parent categories appear before their child categories.*/
WITH CategoryCTE AS (SELECT category_id, parent_category_id, category_name, 0 AS level FROM Categories
WHERE parent_category_id IS NULL
UNION ALL
SELECT c.category_id, c.parent_category_id, c.category_name, p.level + 1 FROM Categories c
JOIN CategoryCTE p ON c.parent_category_id = p.category_id)
SELECT category_id, category_name
FROM CategoryCTE
ORDER BY level, category_id;
----------------------------------------------------------------------------------------------------------------
--Q.Write an SQL query to calculate the sum of the top 5 highest salaries from the "Employees" table.
SELECT SUM(salary) AS total_salary
FROM (SELECT TOP 5 salary FROM Employees ORDER BY salary DESC) AS TopSalaries;
----------------------------------------------------------------------------------------------------------------
--Q.The "Orders" table contains a "total_amount" column. Write an SQL query to
--find the average total amount for each customer from the "Customers" table.
SELECT c.customer_id, c.customer_name, AVG(o.total_amount) AS avg_total_amount
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;
-----------------------------------------------------------------------------------------------------------
/*Q.How do the MIN and MAX functions handle NULL values in the columns? Write a query to
retrieve the minimum and maximum ages of customers from the "Customers" table, considering 
that some customers might not have provided their age (NULL).*/
SELECT MIN(age) AS min_age, MAX(age) AS max_age
FROM Customers;
--------------------------------------------------------------------------------------------
/*Q.How can you find the second minimum and second maximum values from a column using SQL?
Write a query to retrieve the second lowest and second highest salaries from the "Employees" table.*/
--second lowest salary
SELECT MIN(salary) AS second_lowest_salary
FROM Employees
WHERE salary > (
    SELECT MIN(salary)
    FROM Employees
);

-- second max salary
SELECT MAX(salary) AS second_highest_salary
FROM Employees
WHERE salary < (
    SELECT MAX(salary)
    FROM Employees
);

------------------------------------------------------------------------------------------------------------
/*Q.In the "Employees" table, write an SQL query to find the
Nth highest salary using the TOP clause, where N is a given integer.*/

DECLARE @N INT; -- Replace this with the desired value of N
SET @N = 3; -- For example, to find the 3rd highest salary

SELECT DISTINCT TOP 1 Salary
FROM Employees
WHERE Salary IS NOT NULL
ORDER BY Salary DESC
OFFSET (@N - 1) ROWS FETCH NEXT 1 ROWS ONLY;
-----------------------------------------------------
--Q.How can you use the TOP clause within a subquery?
--Write a query to retrieve the top 3 employees with the highest salaries in the "Departments" table.

select departments, max(salary) from employee where salary in
(select top 3 salary from employee order by salary desc) 
group by departments order by salary desc;
------------------------------------------------------------------------------------------------------------
--Q.Is it possible to use the TOP clause to return a percentage of rows from a table?
--If yes, how can you achieve this?
SELECT TOP n PERCENT column1, column2, ...
FROM table_name
ORDER BY some_column;

SELECT TOP 10 PERCENT CustomerID, FirstName, LastName, PurchaseAmount
FROM Customers
ORDER BY PurchaseAmount DESC;
-------------------------------------------------------------------------------------------------------------
--Q.How can you use the DISTINCT
--clause with multiple columns to retrieve unique combinations of values from multiple columns?

SELECT DISTINCT CustomerID, ProductID
FROM Orders;
------------------------------------------------------------------------------------------------------------------
--Q.How does the DISTINCT clause affect the use of the ORDER BY clause? Write a query to retrieve a list 
--of unique product categories from the "Products" table, sorted in alphabetical order.
--SOL^:-the ORDER BY clause will be applied to the distinct values after removing duplicates.
SELECT DISTINCT ProductCategory
FROM Products
ORDER BY ProductCategory;
----------------------------------------------------------------------------------------------------------------
--Q.Is it possible to use the DISTINCT clause together with TOP in SQL Server to retrieve a limited number
--of unique rows? If yes, provide an example.
/*Yes, it's possible to use the DISTINCT clause together with the TOP clause in 
SQL Server to retrieve a limited number of unique rows.
The DISTINCT clause ensures that only unique rows are considered, and the TOP clause limits the number of
results returned.*/
SELECT TOP 5 DISTINCT CategoryID
FROM Sales
ORDER BY CategoryID;
-------------------------------------------------------------------------------------------------------------
/*Q.How does the DISTINCT clause handle NULL values in the columns? Write a query 
to retrieve all distinct country names from the "Customers" table, considering that 
some customers might not have provided their country information (NULL).*/

/*The DISTINCT clause in SQL treats NULL values like any other distinct value. This means
that if you use DISTINCT to retrieve distinct values from a column that contains NULL values,
those NULL values will be treated as a unique value and will appear in the result set.
Keep this behavior in mind when working with the DISTINCT clause.*/
SELECT DISTINCT Country
FROM Customers;
-----------------------------------------------------------------------------------------------------------

--Q.The "Products" table contains a column "category" and a column "price." Write an SQL query to retrieve
--all unique product categories where the average price of products in each category is greater than 100 rupees.

SELECT category FROM Products
GROUP BY category HAVING AVG(price) > 100;
-------------------------------------------------------------------------------------------------------------------
--Q.What is the difference between using the DISTINCT clause and the GROUP BY clause to retrieve unique 
--rows from a table? When would you use one over the other?
/*DISTINCT Clause:
The DISTINCT clause is used to eliminate duplicate rows from the result set. It considers all 
columns specified in the SELECT statement to determine uniqueness.
It's generally used when you want to retrieve a list of unique values based on one or more columns, 
without performing any aggregation or summarization.

GROUP BY Clause:
The GROUP BY clause is used to group rows that have the same values in specified columns into summary rows,
often with aggregate functions applied to other columns.
It's used when you want to perform aggregate calculations like SUM, COUNT, AVG, etc.,
on groups of rows based on certain columns.
It's more powerful than DISTINCT as it allows you to perform calculations and transformations
on groups of rows, and it provides control over how the data is summarized.*/
----------------------------------------------------------------------------------------------------------------
--Which INFORMATION_SCHEMA view contains information about database users and roles?
SELECT name, type_desc
FROM sys.database_principals
WHERE type_desc IN ('SQL_USER', 'WINDOWS_USER', 'SQL_ROLE');
------------------------------------------------------------------------------------------------------------
--How can you query INFORMATION_SCHEMA views to retrieve information about check constraints?

SELECT 
    CONSTRAINT_NAME,
    TABLE_SCHEMA,
    TABLE_NAME,
    COLUMN_NAME,
    CHECK_CLAUSE
FROM INFORMATION_SCHEMA.CHECK_CONSTRAINTS;
----------------------------------------------------------------------------------------------------------
--Q.Can you use a WHERE clause in the SELECT statement of the INSERT INTO ... SELECT statement?
No, you cannot use a WHERE clause directly within the SELECT statement of the INSERT INTO ... SELECT statement.
The purpose of the INSERT INTO ... SELECT statement is to insert all rows returned by 
the SELECT statement into the target table, without further filtering or conditions
------------------------------------------------------------------------------------------------------------
--Q.What is the purpose of the INSERT INTO ... SELECT statement in SQL Server?
The INSERT INTO ... SELECT statement in SQL Server is used to copy data from one
or more source tables or queries and insert it into a target table. This statement allows
you to perform bulk inserts of data from one table or query result into another table,
which can be particularly useful for tasks such as data migration, data consolidation, 
or creating backup copies of data

INSERT INTO TargetTable (Column1, Column2, ...)
SELECT ColumnA, ColumnB, ...
FROM SourceTable
WHERE Condition;
--------------------------------------------------------------------------------------------------------
--Q.What is the key difference between the INSERT INTO ... SELECT statement and the INSERT INTO ... VALUEs
--statementINSERT INTO ... SELECT:

/*The INSERT INTO ... SELECT statement allows you to insert data into a table by selecting data from
one or more source tables or queries.
It is used for bulk inserts and is suitable for scenarios where you want to copy data from one table 
(or query result) into another table.
It's useful when you need to move or consolidate data, perform data integration, or apply 
transformations during the insertion process.

INSERT INTO ... VALUES:
The INSERT INTO ... VALUES statement allows you to insert data into a table by specifying 
explicit values for each column.
It is used for inserting individual rows of data with specific values.
It's useful for inserting a small number of rows, usually with predefined values,
without the need for a source table or query.*/

-- Using INSERT INTO ... SELECT
INSERT INTO TargetTable (FirstName, LastName, Age)
SELECT FirstName, LastName, Age
FROM SourceTable
WHERE Age > 30;

-- Using INSERT INTO ... VALUES
INSERT INTO TargetTable (FirstName, LastName, Age)
VALUES ('John', 'Doe', 35);
------------------------------------------------------------------------------------------------------------
--Q.Can you use a WHERE clause in the SELECT statement of the INSERT INTO ... SELECT statement?
No, you cannot use a WHERE clause directly within the SELECT statement of the INSERT INTO ... SELECT statement.
The purpose of the INSERT INTO ... SELECT statement is to insert all rows returned by 
the SELECT statement into the target table, without further filtering or conditions
---------------------------------------------------------------------------------------------------------
--Q.What happens if the source and target tables of the INSERT INTO ... SELECT statement
--have different column orders?
/*If the source and target tables of the INSERT INTO ... SELECT statement have different column orders, 
you need to ensure that the columns in the SELECT statement are matched correctly with the corresponding 
columns in the target table. The order of columns in the SELECT statement should match the order of columns 
in the target table's column list specified in the INSERT INTO clause.
If the columns are matched incorrectly or if there's a mismatch in the number of columns,
you might encounter errors or unexpected behavior. The database system will attempt to insert
data into columns based on their order in the SELECT statement.*/
-- Incorrect: Mismatched columns
INSERT INTO TargetTable (ColumnB, ColumnC, ColumnA)
SELECT ColumnA, ColumnB, ColumnC
FROM SourceTable;

-- Correct: Matching columns
INSERT INTO TargetTable (ColumnB, ColumnC, ColumnA)
SELECT ColumnB, ColumnC, ColumnA
FROM SourceTable;
----------------------------------------------------------------------------------------------------------
--Q.Can you insert data from multiple source tables into a single target table using INSERT INTO ... SELECT?
Yes, you can insert data from multiple source tables into a single target table using the INSERT INTO ... SELECT 
statement. This is useful when you need to combine data from different tables into one unified dataset. 
Each SELECT statement retrieves data from its respective source table, and the combined result sets are 
then inserted into the target table.

INSERT INTO TargetTable (Column1, Column2, ...)
SELECT ColumnA, ColumnB, ...
FROM SourceTable1;

INSERT INTO TargetTable (Column1, Column2, ...)
SELECT ColumnX, ColumnY, ...
FROM SourceTable2;

-- Repeat for other source tables if needed
----------------------------------------------------------------------------------------------------------------
--Q.Can you achieve the same result with a subquery as you can with a JOIN?
/*Yes, you can achieve similar results using a subquery as you can with a JOIN, but the methods
and performance characteristics might differ. Both approaches allow you to retrieve data from multiple tables
based on certain conditions, but they have distinct use cases and considerations.

Using a JOIN:
A JOIN combines rows from two or more tables based on a related column between them.
JOINs are often used when you need to retrieve data from multiple tables and combine related information 
into a single result set.
Different types of JOINs (INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN) provide various
ways to control how data from each table is matched and included in the result.
JOINs are typically more readable and intuitive when dealing with complex relationships and multiple tables.

Using a Subquery:
A subquery is a query embedded within another query. It's used to retrieve data that will be used
as a condition in the outer query.
Subqueries are often used when you need to filter or aggregate data from one table based on 
the results of another query.
Subqueries can be used in the SELECT, WHERE, or HAVING clauses of the outer query.
Subqueries can become complex and hard to read as the level of nesting increases.*/
-----------------------------------------------------------------------------------------------------------
/*Consider Tables and Prepare data accordingly for the below question
Tables : Customers, Orders, Products
Tables: Customers (customer_id, name), 
Orders (order_id, customer_id), 
Order_Details (order_id, product_id), 
Products (product_id, product_name)
Q.Retrieve the names of customers who have made orders for more than one product.*/
SELECT DISTINCT c.name AS CustomerName
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Order_Details od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY c.customer_id, c.name
HAVING COUNT(DISTINCT p.product_id) > 1;
---------------------------------------------------------------------------------------------------------
/*Consider Tables and Prepare data accordingly for the below question
Tables : Customers, Orders, Products
Tables: Customers (customer_id, name), 
Orders (order_id, customer_id), 
Order_Details (order_id, product_id), 
Products (product_id, product_name)
Q.List the names of customers who have not placed any orders yet.*/
SELECT c.name AS CustomerName
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
------------------------------------------------------------------------------------------------------------
--Tables: Employees, Departments, Projects, Assignments
--Q.Find the names of employees who are assigned to multiple projects in different departments.
SELECT e.employee_name
FROM Employees e
JOIN Assignments a ON e.employee_id = a.employee_id
JOIN Projects p ON a.project_id = p.project_id
JOIN Departments d ON p.department_id = d.department_id
GROUP BY e.employee_id, e.employee_name
HAVING COUNT(DISTINCT p.project_id) > 1 AND COUNT(DISTINCT d.department_id) > 1;
---------------------------------------------------------------------------------------------------------------
/*Tables: 
•	Employees (employee_id, employee_name, department_id), 
•	Departments (department_id, department_name), 
•	Projects (project_id, project_name), 
•	Assignments (employee_id, project_id)

Q.Retrieve the average salary of employees in each department along with the highest salary employee's name.*/
SELECT d.department_name, AVG(e.salary) AS average_salary, h.employee_name AS highest_salary_employee
FROM Departments d
JOIN Employees e ON d.department_id = e.department_id
JOIN (
    SELECT a.department_id, MAX(e.salary) AS max_salary
    FROM Assignments a
    JOIN Employees e ON a.employee_id = e.employee_id
    GROUP BY a.department_id
) max_salaries ON d.department_id = max_salaries.department_id
JOIN Employees h ON max_salaries.max_salary = h.salary
GROUP BY d.department_id, d.department_name, h.employee_name;
------------------------------------------------------------------------------------------------------------
Q.List the names of students who are enrolled in all available courses.
Tables: 
•	Students (student_id, student_name), 
•	Courses (course_id, course_name), 
•	Enrollments (student_id, course_id)
SELECT s.student_name
FROM Students s
WHERE NOT EXISTS (
    SELECT c.course_id
    FROM Courses c
    WHERE NOT EXISTS (
        SELECT *
        FROM Enrollments e
        WHERE e.student_id = s.student_id
        AND e.course_id = c.course_id
    )
);

--------------------------------------------------------------------------------------------------------------
/*Q.Identify students who have taken more than two courses and display their names and the number of courses they've taken.
Tables: 
•	Students (student_id, student_name), 
•	Courses (course_id, course_name), 
•	Enrollments (student_id, course_id)*/

SELECT s.student_name, COUNT(e.course_id) AS num_courses_taken
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
GROUP BY s.student_id, s.student_name
HAVING COUNT(e.course_id) > 2;
----------------------------------------------------------------------------------------------------------------
/*Q.Retrieve the names of authors who have written books for more than one publisher.
Tables: 
•	Authors (author_id, author_name), 
•	Books (book_id, title, author_id), 
•	Publishers (publisher_id, publisher_name)*/
SELECT a.author_name
FROM Authors a
JOIN Books b ON a.author_id = b.author_id
JOIN (
    SELECT author_id, COUNT(DISTINCT publisher_id) AS num_publishers
    FROM Books
    GROUP BY author_id
    HAVING COUNT(DISTINCT publisher_id) > 1
) multiple_publishers ON a.author_id = multiple_publishers.author_id;
--------------------------------------------------------------------------------------------------------------
/*Q.List the titles of books that have not been published by any publisher yet.
Tables: 
•	Books (book_id, title, author_id, publisher_id), 
•	Publishers (publisher_id, publisher_name)*/
SELECT b.title
FROM Books b
LEFT JOIN Publishers p ON b.publisher_id = p.publisher_id
WHERE p.publisher_id IS NULL;
--------------------------------------------------------------------------------------------------------------
/*Q.Display the names of employees and their corresponding manager names.
Tables: 
•	Employees (employee_id, employee_name, manager_id), 
•	Managers (manager_id, manager_name)*/
SELECT e.employee_name AS employee, m.manager_name AS manager
FROM Employees e
LEFT JOIN Managers m ON e.manager_id = m.manager_id;
---------------------------------------------------------------------------------------------------
/*Q.Retrieve the names of employees who are directly managed by a manager with the name 'John'.
Tables: 
•	Employees (employee_id, employee_name, manager_id), 
•	Managers (manager_id, manager_name)*/
SELECT e.employee_name
FROM Employees e
JOIN Managers m ON e.manager_id = m.manager_id
WHERE m.manager_name = 'John';
==================================================================================================================
create table inputs (id int,name varchar(10),salary int,date date)
select * from inputs
insert into inputs values(1,'a',9,'2023-07-04')
insert into inputs values(1,'a',7,'2023-07-03')
insert into inputs values(1,'a',8,'2023-07-02')
insert into inputs values(2,'b',99,'2023-07-18')
insert into inputs values(2,'b',66,'2023-07-23')

--Ans:-1
select *,case
when date in (select max(date) from inputs group by id) then 'latest' else 'old' end as status from inputs;

--Ans:-2
select *, case when row_number() over (partition by id order by date desc)=1 then 'latest'
else 'old' end as status from inputs order by id,date;
--------------------------------------------------------------------------------------------------------------------
create table source (id int, name varchar(10));
insert into source values (1,'A'),(2,'B'),(3,'C'),(4,'D');
select * from source

create table target (id int, name varchar(10));
insert into target values (1,'A'),(2,'B'),(4,'F'),(5,'G');
select * from target

select s.id, 'mismatch' as comment from source s join target t on s.id=t.id where s.name<>t.name
union
select s.id, 'new in source' as comment from source s  left join target t on s.id=t.id where t.id is null
union
select t.id, 'new in target' as comment from source s right join target t on s.id=t.id where s.id is null
===============================================================================================================
create table Employeedetail(EmployeeId int,
Firstname varchar (30),
Lastname varchar (30),
Salary int,
Joiningdate datetime,
Department varchar (30),
Gender varchar (30));

select * from Employeedetail;

insert into Employeedetail values
(01,'Vikas','Ahlawat',600000,'2013-02-15 11:16:18','IT','Male'),
(02,'Nikita','Jain',530000,'2014-07-08 10:58:28','HR','Female'),
(03,'Ashish','Kumar',1000000,'2012-08-08 09:50:50','IT','Male'),
(04,'Nikhil','Bansal',480000,'2015-12-29 11:10:15','HR','Male'),
(05,'Ankita','Sharma',500000,'2015-04-07 10:08:42','Payroll','Female'),
(06,'Anisa','Panti',400000,'2018-04-07 10:08:42','Payroll','Female');

create table Projectdetail ( ProjectdetailID int, EmployeedetailID int, ProjectName varchar (30));

select * from Projectdetail;

insert into Projectdetail values (1,1,'Task Track'),(2,1,'CLP'),
(3,1,'Survey Management'),(4,2,'HR Management'),(5,3,'Task Track'),
(6,3,'GRS'),(7,3,'DDS'),(8,4,'HR Management'),(9,6,'GL Management');

--Write down the query to fetch EmployeeName & Project for those Employee
--who has been assigned more than one project.

select * from Employeedetail;
select * from Projectdetail;

select firstname,count(pd.projectname) as no_of_project_assigned 
from Employeedetail ed join Projectdetail pd
on ed.EmployeeId =pd.EmployeedetailID group by ed.Firstname having count(pd.projectname)>1;
----------------------------------------------------------------------------------------------------------------


































































































