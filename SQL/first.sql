-- creating data base 

create database pw;

-- using data base first to perform query  
use pw;

-- displaying complete table,  
select * from marks;

-- displaying columns from table 
select Physics from marks; 

-- Selecting distinct values from columns 
select DISTINCT computer From marks;

-- multiple columns 
select Physics, Maths from marks;

-- alias of column 
select Physics as phy from marks;
