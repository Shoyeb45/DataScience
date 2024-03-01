use query1;
select * from vgsalesglobale;

-- average 
select avg(NA_Sales)
from vgsalesglobale;

-- sum
select sum(Global_Sales)
from vgsalesglobale;

-- min and max
select max(JP_Sales)
from vgsalesglobale;

select min(Other_Sales)
from vgsalesglobale;

-- Count
select count(Platform) as PlatformCount
from vgsalesglobale;

-- Multiple field
select count(Name) as NameCount, count(NA_Sales) as Count_NA_Sales
from vgsalesglobale;

-- count with *
select count(*) as total_Records
from vgsalesglobale;

-- distinct plus count
select count(distinct Year) as Number_of_Distinct_Year
from vgsalesglobale;

-- is null
use pw;
select * from sample2;
select Section
from sample2
where Branch is null;

select count(DOB)
from sample2
where Branch is not null;
