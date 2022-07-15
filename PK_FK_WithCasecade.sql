--cacade on update and on delete  and we can not apply cascading on insertion
--helps to diectly update and delete of parent col alogn with child
use MyDBPrac
go
--parent table -
create table P1
(
id int primary key,
name varchar(20)
)
go
insert into P1 values(1,'Neha')
go
insert into P1 values(2,'Sneha')
go
insert into P1 values(3,'Nehal')
go
insert into P1 values(4,'Neharica')
go
select * from P1
go

---child table
create table C1
(
id int primary key,
eid int foreign key references P1(id) on delete cascade on update cascade
)
go
insert into C1 values(1,1)
go
insert into C1 values(2,2)
go
insert into C1 values(3,3)
go
insert into C1 values(4,4)
go
select * from C1

go
update P1 set id = 11 where id = 2
go
delete from P1 where id = 11
























