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
select Physics as phy, Maths from marks;

--  Count Keyword
select count(Physics) as phy from marks;
select count(*) as TotalRecords from marks;

-- count and distinct
select count(distinct Maths) from marks; 

-- Limit : It will show given number of rows 
select 
	* 	
from marks
LIMIT 3;

-- Where Keyword
select * from data; 
select 
	Duration , Pulse
from data
where Duration > 120 ;

-- <> :- not equal
select 
	Duration
from data
where	Duration <> 100;


