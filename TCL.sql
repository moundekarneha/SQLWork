--TCL - transaction control lang = help to control operations on table data like insert update and delete

use MyDBPrac
go
create table Branch
(
bcode int identity primary key,
bname varchar(50),
location varchar(50)
)
go
select * from Branch
go
insert into Branch values('SBI','Nagpur')
go
insert into Branch values('INDIAN','Nagpur')
go
insert into Branch values('BOI','Nagpur') 
go
insert into Branch values('BOB','Chainnai')
go
insert into Branch values('MaharashtraBank','Nagpur')
go
--roll back transaction and begib transaction
begin transaction
rollback

go
update Branch set location= 'Pune' where bcode = 2
go
begin transaction
rollback

go
delete from Branch where bcode=5
go
begin transaction
insert into Branch values('MaharashtraBankOf','Nagpur')
go
select * from Branch
go
begin transaction
rollback
go
select * from Branch
go
begin transaction
insert into Branch values('MaharashtraBank','Nagpur')
go
begin transaction
insert into Branch values('MaharashtraBankOf','Pune')
go
select * from Branch
go
begin transaction
rollback
select * from Branch
go
begin transaction
insert into Branch values('MaharashtraBankOf','Pune')
commit
go
select * from Branch
go
begin transaction
rollback
go
select * from Branch

go
--
begin transaction
delete from Branch where bcode= 4
delete from Branch where bcode= 3
delete from Branch where bcode= 9

go
begin transaction
rollback
go
select * from Branch

go
begin transaction
delete from Branch where bcode= 4
delete from Branch where bcode= 3
save transaction s1
delete from Branch where bcode= 9
go
select * from Branch
go
begin transaction
rollback
go
select * from Branch
go
begin transaction
rollback transaction s1
go
select * from Branch
















































 