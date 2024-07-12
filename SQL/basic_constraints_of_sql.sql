-- Constraints in column

-- 1. Primary key

create database user;
use user;

-- Single column as primary key 
create table employee (
	id int primary key,
    name varchar(20)
);

insert into employee values
(1, "Ravi"),
(4, "Dinkar");

select * from employee;

insert into employee values
(4, "Shoyeb");

-- single column with auto_increment

create table orders (
	order_id int  auto_increment primary key,
    price int not null
);

insert into orders values
(1001, 600);

insert into orders(price) values
(700),
(1000),
(9831),
(9000);
select * from orders;

-- defining a multi-column primary key
create table favourites (
	order_id int,
    customer_id int,
    favourite_at timestamp default current_timestamp,
    primary key(order_id, customer_id)
);

insert into favourites(order_id, customer_id) values
(1, 2);

select * from favourites;


insert into favourites(order_id, customer_id) values
(1, 1),
(1, 3),
(2, 2);

insert into favourites(order_id, customer_id) values
(2, 2);

-- 2nd way
create table emp (
	id1 int auto_increment,
    id2 int,
    name varchar(20),
    primary key(id1, id2)
);

insert into emp values
(1, 2, "ravi");
insert into emp(id2, name) values
(3, "Durgesh"),]
(2, "Akash"),
(9, "Rohit");

select * from emp;

create table xyz (
	id int not null
);


create table tags (
	id int,
    name varchar(20) not null
);

insert into tags values
(1, "Shoyeb");
select * from tags;

describe tags;

-- let's add id as primary key
alter table tags
add primary key(id);

alter table tags
modify id int primary key;
-- remove primary key
alter table tags
drop primary key;
-- not working to remove 
alter table tags
modify id float;


-- Primary key - revision
create table rev (
	id VARCHAR(30) primary key,
    name varchar(30)
);

insert into rev values
("123", "ABC");
insert into rev values
("", "abc");
insert into rev values
(NULL, "abc");
