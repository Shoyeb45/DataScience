create database deldb;
use deldb;
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    price_per_unit DECIMAL(10, 2),
    discount DECIMAL(10, 2)
);
INSERT INTO sales (sale_id, product_id, quantity, price_per_unit, discount) VALUES
(1, 101, 10, 15.00, 2.00),
(2, 102, 5, 25.00, 5.00),
(3, 103, 8, 30.00, 3.00),
(4, 104, 3, 45.00, 4.50);

select * from sales;
-- Calculate the total revenue before discount for each sale
select sale_id, (quantity * price_per_unit) as revenue_before_discount from sales;

-- Calculate the net revenue after applying the discount.
select sale_id, (quantity * price_per_unit - discount) as revenue_after_discount from sales;

-- Calculate the total revenue before discount.
SELECT sale_id, quantity, price_per_unit, (quantity * price_per_unit) AS total_revenue_before_discount
FROM sales;

-- Calculate the average price per unit for each sale after discount.
SELECT sale_id, quantity, price_per_unit, discount, (( quantity * price_per_unit - discount) / quantity) as avg_price 
from sales;

-- Find out which sales have an odd quantity

select sale_id, quantity
from sales
where quantity % 2 = 1;

CREATE TABLE user_permissions (
    user_id INT PRIMARY KEY,
    permissions INT
);
INSERT INTO user_permissions (user_id, permissions) VALUES
(1, 1),  -- Read
(2, 2),  -- Write
(3, 4),  -- Execute
(4, 8),  -- Delete
(5, 3),  -- Read and Write
(6, 7),  -- Read, Write, and Execute
(7, 15); -- All permissions (Read, Write, Execute, Delete)
select * from user_permissions;

-- Find users who have the "Read" permission.
select user_id 
from user_permissions
where permissions = 15 || permissions = 3 || permissions = 1 || permissions = 7;

SELECT user_id, permissions, (permissions & 1) AS has_read_permission
FROM user_permissions
WHERE (permissions & 1) = 1;

-- Comparison Operators

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10, 2),
    quantity INT
);

INSERT INTO products (product_id, product_name, price, quantity) VALUES
(1, 'Laptop', 1200.00, 10),
(2, 'Mouse', 25.00, 100),
(3, 'Keyboard', 45.00, 50),
(4, 'Monitor', 300.00, 20),
(5, 'Headphones', 150.00, 75);

select * from products;

-- Find the product with the exact price of $300.00.
select product_id, product_name, quantity
from products
where price = 300;

select product_id, product_name, quantity
from products
where price != 300;

select product_id, product_name, quantity
from products
where price > 300;

select product_id, product_name, quantity
from products
where price < 300;

select product_id, product_name, quantity
from products
where price <> 300;


