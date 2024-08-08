use forjoin;
show tables;

select * from employees;
select * from departments;

-- Inner join

select e.EmployeeID as EmployeedID, e.EmployeeName as EmployeeName , e.DepartmentID as DepartmentID, d.DepartmentName as DepartmentName
from employees e
inner join departments d on d.DepartmentID = e.DepartmentID;

-- Left join
select e.EmployeeID as EmployeedID, e.EmployeeName as EmployeeName , e.DepartmentID as DepartmentID, d.DepartmentName as DepartmentName
from employees e
left join departments d on d.DepartmentID = e.DepartmentID;

-- Right Join
select e.EmployeeID as EmployeedID, e.EmployeeName as EmployeeName , e.DepartmentID as DepartmentID, d.DepartmentName as DepartmentName
from employees e
right join departments d on d.DepartmentID = e.DepartmentID;

-- cross join
create table meals (
	mealName varchar(90)
);

create table drinks (
	drinkName varchar(90)
);
INSERT INTO Drinks
VALUES('Orange Juice'), ('Tea'), ('Cofee');

INSERT INTO Meals
VALUES('Omlet'), ('Fried Egg'), ('Sausage');

select * from meals;
select * from drinks;

-- Joining meals and drinks
select * 
from drinks
cross join meals;

select *
from employees
cross join departments;

-- Full join - Not supported in mysql

-- self join 

use classicmodels;
select * from employees;

select 
    CONCAT(m.lastName, ', ', m.firstName) AS Manager,
    CONCAT(e.lastName, ', ', e.firstName) AS 'Direct report'
from employees e
inner join employees m on e.reportsTo = m.employeenumber;
