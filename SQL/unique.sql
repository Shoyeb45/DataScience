create database uq;
use uq;

create table suppliers(
	id int auto_increment primary key,
    name varchar(50),
    phone varchar(50) not null unique,