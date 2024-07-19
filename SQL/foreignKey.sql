create database fkdemo;
use fkdemo;

create table categories (
	categoryID int auto_increment primary key,
    categoryName varchar(50) not null
);

-- categories -> products
create table products (
	productID int auto_increment primary key,
    productName varchar(90) not null,
    categoryID int,
    constraint fk_constraint foreign key (categoryID) references categories(categoryID)
);

insert into categories (categoryName)
values
("smartphone"),
("smartwatch");
select * from categories;

insert into products(productName, categoryId) values
("iPhone", 1);

select * from products;
--  Now inserting row which has not category id in parent table
insert into products(productName, categoryID) values
("washing machine", 3);

insert into products(productName, categoryID) values
("Apple Smart Watch", 2);

-- Let's delete row from parent table
delete from categories
where categoryID = 1;  -- It's throwing error

-- Let's create another two tables

-- Parent table students 
create table students (
	student_id int primary key,
    name varchar(50),
    subject varchar(20) not null
);

create table domains (
	domain_id int primary key,
    student_id int,
    domain varchar(50),
    constraint fk_stud foreign key (student_id) references students(student_id)
);

insert into students values 
(123, "Ravi", "HTML");

insert into domains values 
(23, 123, "Web Dev");

select * from students;
select * from domains;

insert into students values
(124, "Divya", "AI Basic");

insert into domains values
(24, 124, "DS & AI");

-- But this will not go  


-- cascade reference
drop table products;

create table products (
	productID int auto_increment primary key,
    productName varchar(40),
    categoryId int,
    -- Declaring  foreign key constraint
    constraint 
    foreign key (categoryId)
    references categories(categoryID)
    on delete cascade
    on update cascade
); 

select * from categories;
select * from products;

insert into products values
(2, "IPhone", 1);

insert into products values
(3, "Apple smart watch", 2);

-- updating values 
update categories
set categoryID = 1025
where categoryId = 1;

-- deleting values
delete from categories
where categoryid = 2; 

-- set null reference

 