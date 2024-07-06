-- Creating new user
create user "shoyeb"@"localhost" identified by "abc";
-- To grant permission to the user of certain data object
grant all privileges on *.* to "shoyeb"@"localhost";

revoke all privileges on *.* from "shoyeb"@"localhost";

create database dhokha;
use dhokha;
create table test1 
(
	name varchar(10),
    marks int
);

grant all privileges on dhokha.* to "shoyeb"@"localhost";
