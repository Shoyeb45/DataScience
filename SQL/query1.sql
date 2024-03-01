create database Query1;
use Query1;

select * from product;
select * from product where Category = "Gadgets";

select PName, Price, Manufacturer from product where PName = "Gizmo";

-- Multiple selection
-- or 
use pw;
select *
from product
where Category = "Gadgets" or Category = "Photography";
 
-- and
select * 
from data 
where Duration > 120 and Duration < 380;

-- between
select *  
from data 
where Calories between 300 and 400;

--  LIKE
use query1;
select * from students;

-- using % operator
select region, gender, academic
from students
where region like "%EA";

-- using _ operator

select

