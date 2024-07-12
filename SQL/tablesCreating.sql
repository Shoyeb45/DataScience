create database aviation_industry;
use aviation_industry;
create table airplanes (
	id INT,
    type VARCHAR(60),
    `name` varchar(60),
	`model` varchar(60),
    price bigInt
);

-- If table name already exists
create or replace table airplanes (
	`name` varchar(50),
    `model` varchar(54),
    id int
);