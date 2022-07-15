--trigger - automatically fire/ execute when some pevents occurs on db 
--
use [MyDBPrac]
--
select * from EmployeeData
--table
create table Student
(
id int primary key identity,
name varchar(20),
addrss varchar(20),
sid int
)
go
insert into Student values('neha','nagpur',1)
go
insert into Student values('sneha','nagpur',2)
go
select * from Student
go
select * from StudentFee
go
create table StudentFee
(
id int primary key identity,
fid int,
fee int
)
go
insert into StudentFee values(1,2000)
go
insert into StudentFee values(2,3000)
go
insert into StudentFee values(1,4000)
go
insert into StudentFee values(2,6000)
go
select * from StudentFee
--
--trigger --update trigger
create trigger triggerStud on StudentFee 
for update 
as
begin
declare @oldfee int, @newfee int

select @oldfee = fee from deleted;
select @newfee = fee from inserted;

if(@oldfee > @newfee)
begin
print 'new fee can not be less than old fee';
rollback;
end
end

go
update StudentFee set fee = 800000 where id =1
go
--delete trigger
create trigger deletetrigger on StudentFee 
for delete
as
begin
 declare @count int

 select @count = count(*) from deleted
 if(@count>1)
 begin
 print 'can not delete more than one record at a time'
 rollback;
 end
end

go
delete from StudentFee
go
delete from StudentFee where id=2

--insert trigger with instead of
create view sv as (select * from StudentFee)
go
select * from sv
go
select * from StudentFee
go

--insert trigger
create trigger inserttrigger on sv
instead of insert  
as
begin
declare @fid int, @fee int
select @fid = fid from inserted
select @fee = fee from inserted
insert into StudentFee(fid,fee) values(@fid,@fee)
end

go
go
--
insert into sv values(2,5,30000)
go 
--instead of trigger
create view viewmy
as
select s.id, s.name, s.addrss, sid from Student s

go
select * from viewmy
go
insert into viewmy(name,addrss,sid) values('kunal','mp',2) 
go

--trigger
create trigger intrigger on viewmy
instead of insert
as
begin
select * from inserted
select * from deleted
end
go




























































































