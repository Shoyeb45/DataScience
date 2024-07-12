show databases;
use healthcare;
show tables;
select * from patients;

show columns from patients;
describe hospital;
insert into patients values
(19213, "Andrew Merti", "2004-09-19", "M", "Dr Abhishek");

insert into patients values
(19234, "Prakhar Sahu", "1998-01-01", "M", "Dr Rohit Shah"),
(19432, "Charlie Puth", "1994-10-18", "M", "Dr Shubham Sen" ),
(19843, "Durgesh Shukla", "2003-06-28", "M", "Dr Aryan Chauhan");

insert into hospital values
(145, "AIIMS", "Delhi", 9832412345),
(146, "AIMS", "Mandavi", 9012312331);
select * from hospital;		

create table medical_records 
(
	id 						int, 
	problem					varchar(200),
	date_of_examination		date, 
	patient_id				varchar(15), 
	doctor_id				varchar(15)
);

insert into Medical_Records values (1, 'Food Poisoning', STR_TO_DATE('10-01-2023', '%d-%m-%Y'), 'P1', 'D2');
insert into Medical_Records values (2, 'Fever and Flu', STR_TO_DATE('11-01-2023', '%d-%m-%Y'), 'P6', 'D6');
insert into Medical_Records values (3, 'Back Spasm', STR_TO_DATE('15-01-2023', '%d-%m-%Y'), 'P7', 'D6');
insert into Medical_Records values (4, 'Headache', STR_TO_DATE('20-01-2023', '%d-%m-%Y'), 'P0', 'D7');

select * from medical_records;

SET SQL_SAFE_UPDATES = 0;
-- update the data in doctor id
update medical_records 
set doctor_id = "D9"
where id = 4; 

select * from patients;

update patients
set full_name = "Nami", gender = "F"
where patient_id = 19432;


-- Alter command - we can update meta information of tables
-- 1. adding new column
alter table medical_records
add duration_of_recover int;

 
select * from medical_records;

-- Dropping columns using alter 
alter table medical_records
drop duration_of_recover;

select * from medical_records;

describe medical_Records; 

-- creating new table
create table emp 
(
	name varchar(20) default "NAME",
    age int default 0
);

select * from emp;
describe emp;

-- 2. change table name
alter table emp
rename to employee;
show tables;

-- 3. Modify the data type of columns

alter table employee
modify name VARCHAR(50) default "";

describe employee;
insert into employee values
("Rohit", 19),
("Aryan", 20);
	
-- 4. Change column name
alter table employee
change column name full_name varchar(90) default " " ; 
select * from employee;   

-- truncate - to remove all the records from the table
truncate table employee;

-- Delete - to remove the record by using where condition 
select * from medical_records;
delete from medical_records 
where  patient_id = "P1";

describe patients;
insert into Patients values 
(19823, 'Vishva', STR_TO_DATE('10-05-1990', '%d-%m-%Y'), "M", "Dr Ojha"),
(19826, 'Billie', STR_TO_DATE('10-05-1989', '%d-%m-%Y'), "M", "Dr Dinkar");
select * from patients;

delete from patients
where patient_id = 19826;
