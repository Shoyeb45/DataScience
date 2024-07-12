select @@autocommit;

-- disable autocommit 
-- When autocommit is set to 0, then if we do any changes and execute rollback , then it will work like undo. Once we have done changes and then executed commit then the change is permanent and it can't be rollbacked again.
 
set autocommit = 0;
describe test1;
select * from test1;
insert into test1 values
("Abhyudaya", 90);

commit;
rollback;

-- using savepoint
-- savepoint is used to capture the snapshot of some changes - if we do the commit then all the savepoint will be cleared 
insert into test1 values
("Aryan", 89);
savepoint s1; 

insert into test1 values
("Shoyeb", 99);
savepoint s2;

rollback to s2;
rollback;
