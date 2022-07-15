use MyDBPrac 
--group by - rollback and cube clause
create table EmployeeData
(
 id int identity primary key,
 name varchar(20),
 job varchar(30),
 salary int,
 dept varchar(20)
)
go
insert into EmployeeData values('Neha','softwareEngg', 50000,'Developer')
go
insert into EmployeeData values('Nehal','softwareEngg', 50000,'Developer')
go
insert into EmployeeData values('Sneha','softwareEngg', 10000,'Developer')
go
insert into EmployeeData values('Neha','SeniorsoftwareEngg', 40000,'Technical')
go
insert into EmployeeData values('Neharica','softwareEngg', 30000,'Developer')
go
insert into EmployeeData values('Neha','softwareEngg', 5000,'HR')
go
select * from EmployeeData
go
--rollback
select job, count(*) from EmployeeData group by rollup (job)
go
--cube
select job, count(*) from EmployeeData group by cube (job)
--rollup for multiple col
go
select job, count(*), dept from EmployeeData group by rollup(job, dept)
--cube for multiple col
go
select job, count(*), dept from EmployeeData group by cube(job, dept)









