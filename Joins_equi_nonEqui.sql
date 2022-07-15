--non ansi format joins - equi and non equi join
--equi join - retrive data on the basis of equality condition but we can use =
--cant not use following operators
-- !=,>=,<=,<,>

--non equi join - retrive data on the basis of any condition expect  equality condition but we cant use =
--cant not use following operators =
--can use , !=,>=,<=,<,>, between , and ....etc
use MyDBPrac
go

create table test1
(
sno int,
name varchar(20)
)
go

create table test2
(
sno int,
name varchar(20)
)

go
insert into test1 values(1,'neha')
go
insert into test1 values(2,'Sneha')
go
insert into test1 values(3,'nehal')
go
insert into test1 values(4,'neharica')


go
insert into test2 values(1,'abc')
go
insert into test2 values(2,'pqr')
go
insert into test2 values(3,'xyz')
go
insert into test2 values(4,'lmn')
go
insert into test2 values(5,'syx')
go

select * from test1
go

select * from test2

--equi join  - uses "=" operator		
select * from test1, test2 where test1.sno = test2.sno
go
-- non equi join - not use "=" operator
select * from test1, test2 where test1.sno > test2.sno























