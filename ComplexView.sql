--Complex View- doent suppoert dml operation only supports select cmd 
--used to access required info from multiple table
use MyDBPrac
go
select * from EmployeeData
go
--table 
create table Emp_hyd(id int, name varchar(20), sal money) 
go
create table Emp_ngp(id int, name varchar(20), sal money) 
go
go
insert into Emp_hyd values(1,'neha',70000)
go
insert into Emp_hyd values(2,'sneha',50000)
go
insert into Emp_hyd values(3,'nehal',10000)
go
insert into Emp_hyd values(4,'snehal',80000)
go
insert into Emp_hyd values(5,'neharika',30000)
go
insert into Emp_hyd values(6,'nehals',20000)
go
select * from Emp_hyd
go
insert into Emp_ngp values(1,'neha',70000)
go
insert into Emp_ngp values(2,'sneha',50000)
go
insert into Emp_ngp values(3,'nehal',10000)
go
insert into Emp_ngp values(4,'snehal',80000)
go
insert into Emp_ngp values(5,'neharika',30000)
go
insert into Emp_ngp values(6,'nehals',20000)
go
select * from Emp_ngp

--create view
go
alter view MultipleView 
as 
select * from Emp_hyd
union all
select * from Emp_ngp

go
select * from MultipleView

go
create view MultipleView1 
as 
select * from Emp_hyd
union 
select * from Emp_ngp
go
select * from MultipleView1













