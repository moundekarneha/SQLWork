--sub query or nested query
--two types
--corelated and non corelated sub queries
-- coralated sun query - outer query will execute 1st and then inner query will execute
--non - corelated subquery - inner

use MyDBPrac
go
select * from EmployeeData
go
--sub query 
--non corelated sub query
select * from EmployeeData where salary = (select max(salary) from EmployeeData)

--single row sub qury and multi row  sub query
--single row sub query - supports <,>,<=,>=,=,!=
--multi row sub query - not supported - in 
go
select * from EmployeeData where name in (select name from  EmployeeData where name = 'Neha' or name = 'Nehal')

go
select * from EmployeeData where name in ('Neha', 'Nehal')
go
--insert value through sp - through in parameters
alter procedure insertsp(@nam varchar(20), @jb varchar(20), @sal int, @dep varchar(20))
as 
begin
insert into EmployeeData(name,job,salary,dept) values(@nam,@jb,@sal,@dep)
end

go
execute insertsp 'Nehals','SSD',60000,'Technical'

