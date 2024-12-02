use classicmodels;
show tables;
-- 1. Find the total sales amount for each product.
with prod as (
	select * from orderdetails
)
select productCode, sum(quantityOrdered * priceEach) as sales
from prod
group by productCode;


-- 2. Retrieve the customers who have placed more than 5 orders.
select customerNumber, count(orderNumber) from orders group by customerNumber;
select * from customers;

with 
ord as (
	select * from orders
),

cust as (
	select * from customers
)
select ord.customerNumber, cust.customerName, count(ord.customerNumber) as number_of_order
from cust
inner join ord on ord.customerNumber = cust.customerNumber
group by customerNumber
having number_of_order > 5;
-- select customerNumber, count(orderNumber) as orderQuantity
-- from ord 
-- group by customerNumber
-- having orderQuantity > 5;

-- 3. List the employees along with the number of customers they manage.
with 
cust as (
	select * from customers
),

emp as (
	select * from employees
)
select  emp.employeeNumber, concat(emp.firstName, " ", emp.lastName) as employeeName, count(emp.employeeNumber) as numberOfEmployees
from cust
inner join emp on cust.salesRepEmployeeNumber = emp.employeeNumber
group by emp.employeeNumber; 

select * from employees;

-- 4.Get the average order value for each customer.
select * from orderdetails;
select * from customers;

with
cust as (
	select customerNumber, customerName from customers
),

ordr as (
	select customerNumber, orderNumber from orders
),

orderPrice as (
	select * 
    from orderdetails od
    inner join ordr on ordr.orderNumber = od.orderNumber
)
select * 
from cust
inner join orderPrice ord on cust.customerNumber = ord.customerNumber;




