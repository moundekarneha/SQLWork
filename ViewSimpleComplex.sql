--view 
--Simple and complex view
--simple view - called as updatable - supports DML operations - help to access required info from single table
--complex view - called as non - updatable - doent supports DML operations - help to access required info from multiple table


use MyDBPrac
go
select * from EmployeeData
go

--view 
create view v1 as select * from EmployeeData
go
select * from v1
go
insert into v1 values('sonika', 'se',40000,'developer',1)
go
update v1 set name='senorita' where name = 'sonika'
go