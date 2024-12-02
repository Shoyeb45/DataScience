use classicmodels;

-- employees who work in usa

select * from employees;
select * from offices;

select emp.employeeNumber, , of.country
from offices `of`
join employees emp on emp.officeCode = of.officecode
where country = "USA";

-- Using subquery

select *
from employees 	
where officeCode in (
		select officeCode from offices where country = "USA"
);


-- customer who has highest payment 
select * from customers; 
select * from payments;

select c.customerNumber, p.customerName ,p.amount
from payments p
join customers c on c.customerNumber = p.customerNumber
order by p.amount desc
limit 1;

-- using subquery
set @mx_pay = (select max(amount) from payments);
select customerNumber, amount 
from payments
where amount = @mx_pay; 

select * from customers c left join orders o on c.customernumber=o.customernumber 
where o.ordernumber is null;

-- customers who have not placed any order
select * from orders;
select *
from customers o
join orders c on c.customerNumber = o.customerNumber
-- group by o.customerNumber
-- where o.comments is null;
