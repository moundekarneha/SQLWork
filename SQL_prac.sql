
--DDl operations
create database MyDBPrac
go
use MyDBPrac
go 
create Table Emp
(
id int identity primary key,
name varchar(50)
)
go
sp_help Emp 
go
--alter colunm
alter table Emp alter column name varchar(10)
go 
--add coulnm
alter table Emp add address varchar(10)
go
--change coulmn name and table name 
sp_rename 'Emp.name', 'empname'
go
--change table name 
sp_rename 'Emp', 'Employee'
--alter drop
go
alter table Employee drop column address
go
--truncate
truncate table Employee
go
drop table Employee





--DML operations
--insert
insert into Emp values('Neha')
go
insert into Emp values('Sneha')
go
insert into Emp values('Nehal')
go
insert into Emp values('Neharika')
go
insert into Emp(name) values('Neharikas')

--update
update Emp set name='Nehal' where id=1
--delete 
delete from Emp where id= 1
go
--DQL/DRL= data retrival lang
select * from Emp
go
select * from Emp where id=2

--set operations
-- union, union all, intersect and except
create table address
(
id int identity primary key,
eid int references Emp(id),
cname varchar(10)
)
go
insert into address values(1,'Nagpur')
go
insert into address values(2,'Solapur')
go
insert into address values(3,'Kanpur')
go
insert into address values(4,'Jablapur')
go
select id from address
union 
select id from Emp
go
select id from address
union all
select id from Emp
go
select id from address
intersect
select id from Emp
go
select id from address
except
select id from Emp
go
--pk anf fk
create table dept
(
did int identity primary key
)
go
create table cust
(
id int identity primary key,
did int foreign key references dept(did)
)
--joins
create table Stud
(
id int identity primary key,
sname varchar(20),
email varchar(10),
cid int
)
go
select * from Stud
go
create table course
(
cid int identity primary key,
cname varchar(20)
)
go
--inner join
 select * from Stud s inner join course c on s.cid =c.cid
 go
 --left outer join
 select * from Stud s left outer join course c on s.cid =c.cid
 go
 --right outer join
 select * from Stud s right outer join course c on s.cid =c.cid

  go
 --full outer join
 select * from Stud s full outer join course c on s.cid =c.cid
 go
 --cross join - product of rows
  select * from Stud s cross join course c
--natural join - sql doesnt support natural joins

--Non ansi format
--self join- iy is use with alias name, any no of aliases name can take
-- alias name help to maitain copy of table in temporary buffer
select * from Stud s1, Stud s2 where s1.cid = s2.cid and s2.sname='kunal'
go
--clauses
--group by - group similar data based on column 
select id, count(*) from Stud group by id

go
--having - filter data after grouping the data
select id,count(*) from Stud group by id HAVING count(*)<=1

 

 




