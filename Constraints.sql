--constraints
--unique- accpet null but not duplicates
--not null - not accept null values
--check - apply condition and before inserting it will check
--
use MyDBPrac
go
create table Myconstraint
(
id int unique,
location varchar(20) unique,
name varchar(20) not null,
salary int check(salary>10000)
)