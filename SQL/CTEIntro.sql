-- Common table expressions
use classicmodels;
select * from customers;


-- Common table - it is temporary result set 
with cust as
(
	select * from customers
)
select * from cust;

with pay as (
	select * from payments
) 
select * from pay;

select * from customers;

with cust as (
	select *
    from customers
    where country = "USA"
) 
select customerName
from cust 
where state = "CA";


create database cte;
use cte;

select * from raw_customers;
select * from payment_with_status;
select * from raw_orders;

with orders as (
	select * from raw_orders
)
select id, user_id from orders;


with
customer as (
	select id as 
),