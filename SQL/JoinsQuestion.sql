use classicmodels;

show tables;
-- 1. Customer Orders: List all customers along with their orders, including customer name and order number.
select * from customers;
select * from orders;

select c.customerNumber as customerNumber, c.customerName as customerName, o.orderNumber as orderNumber
from customers c
inner join orders o on c.customerNumber = o.customernumber;

-- 2. Employee Office Locations: List all employees along with the details of the offices they work in,
-- including employee name and office city. 

select * from employees;
select * from offices;

select concat(e.firstname, " ", e.lastName) as employeeName, o.city as city
from employees e
inner join offices o on e.officeCode = o.officeCode;

-- 3. Product Orders: List all products along with the details of the orders they appear in, including
-- product name and order date.
select * from product;
select * from orders;
select * from orderdetails; 

select*
from products pr
inner join orderdetails o on pr.productCode = o.productCode;
select pr.productName, r.orderdate
from products pr
inner join orderdetails o on pr.productCode = o.productCode
inner join orders r on r.ordernumber = o.ordernumber;


-- 4. Order Payments: List all orders along with the details of the payments made for those orders,
-- including order number and payment amount. 

select o.ordernumber, p.amount
from payments p
inner join orders o on o.customerNumber = p.customerNumber;


-- 5. Customer Sales Representatives: List all customers along with their sales representatives,
-- including customer name and sales representative's name.
select * from customers;
select * from employees;

select c.customerName, concat(e.firstName, " ", e.lastName) as salesRep
from customers c
inner join employees e on c.salesRepEmployeeNumber = e.EmployeeNumber;


-- 6. Employee Managers: List all employees along with their managers, including employee name and
-- manager's name.
select * from employees;

select *
from employees e1
inner join employees e2 on e1.employeeNumber = e2.reportsTo;

-- 7. Office Territories: List all offices along with the territories they belong to, including office city and
-- territory name.
select * from offices;

-- 8. Customer Countries: List all customers along with the countries they are located in, including
-- customer name and country name.
select * from customers;
select customerName, country
from customers;

-- 9. Product Vendors: List all products along with their vendors, including product name and vendor name
select * from products;
select productName, productVendor


