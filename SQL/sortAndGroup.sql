create database sortAndgrp;

use sortAndgrp;
select * from sample2;

-- order by
select section, physics 
from sample2
order by Physics;

-- Group by  

select section, sum(maths) as MathsMarks
from sample2
group by Section;

select branch, sum(maths) as MathsMarks, sum(Physics) as PhysicsMarks, sum(Computer) as ComputerMarks
from sample2
group by Branch;

select  section, avg(maths) as Maths, avg(Physics) as Physics, avg(Computer) as Computer, avg(Chemistry) as Chem
from sample2
group by section;

-- having
 
 select section, sum(maths) as MathsMarks
from sample2
group by Section
having section = 'A';

select branch, sum(maths) as MathsMarks, sum(Physics) as PhysicsMarks, sum(Computer) as ComputerMarks
from sample2
group by Branch
having PhysicsMarks > 200;

select  section, avg(maths) as Maths, avg(Physics) as Physics, avg(Computer) as Computer, avg(Chemistry) as Chem
from sample2
group by section
having chem > 34 and chem < 37;

-- Questions
use query1;
select * from students; 

select stay, count(inter_dom = "Inter") as count_int, avg(todep) as average_phq, avg(tosc) as average_scs, avg(toas) as average_as
from students
group by stay
order by stay desc;

select stay, count(*) as count_int, avg(todep) as average_phq, avg(tosc) as average_scs, avg(toas) as average_as
from students 
where inter_dom = "Inter"
group by stay
order by stay desc;



