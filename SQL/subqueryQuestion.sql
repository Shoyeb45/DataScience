use classicmodels;

-- 1. Find customers who have never placed an order.

select customerNumber, customerName
from customers
where customerNumber not in (select distinct customerNumber from orders);

-- 2. List products that have never been ordered.

select * from products;
select * from orderdetails;

select productcode, productName
from products
where productCode not in (select distinct productCode from orderdetails);

-- 3. Get the names of customers who have placed orders worth more than $10,000 in total.
select * from customers;
select * from payments;

select customerName, customerNumber
from customers
where customerNumber in (select customerNumber from payments group by customerNumber having sum(amount) >= 10000);

-- 4. Find the employees who do not manage any other employees.

select distinct employeenumber from employees;
select employeeNumber, concat(firstName, " ", lastName)
from employees
where  employeeNumber not in (
	select distinct reportsTo 
    from employees
    where reportsTo is not null   -- Here we have to include not null because the firt row is null and it will not search if the first is null
);