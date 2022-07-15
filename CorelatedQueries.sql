--
--corelated sub query
use MyDBPrac
go
select * from EmployeeData
go
--non - corelated query to find 1st and 2nd highest salary
select * from EmployeeData where salary = (select max(salary) from EmployeeData where salary < (select max(salary) from EmployeeData))


--corelated sub query

--corelated query to find 1st and 2nd highest salary
select * from EmployeeData e1 where 0= (select count(salary) from EmployeeData e2 where e2.salary>e1.salary)
go
select * from EmployeeData e1 where 1= (select count(salary) from EmployeeData e2 where e2.salary>e1.salary)
go
select * from EmployeeData e1 where 2= (select count(salary) from EmployeeData e2 where e2.salary>e1.salary)