--Ranking functtion - assign the rank on row wise or group of row wise- row_number(), rank(), dense_rank()
use MyDBPrac 
go
select * from EmployeeData

 go
 --row_number
 select name, salary, row_number() over(order by salary desc) from EmployeeData
 --rank()--it will assign same number to same value - and next rank no will skipped
 select name, salary, rank() over(order by salary desc) from EmployeeData
 --dense_rank
 select name, salary, dense_rank() over(order by salary desc) from EmployeeData 
 go
 alter table EmployeeData add deptno int
 go
 update EmployeeData set deptno = 1  where id = 1
  go
 update EmployeeData set deptno = 1  where id = 2
  go
 update EmployeeData set deptno = 2  where id = 3
  go
 update EmployeeData set deptno = 2  where id = 4
 
 go
 select * from EmployeeData
 go
 select name, salary,deptno, row_number() over(partition by deptno order by salary desc) from EmployeeData
 go
 select name, salary,deptno, rank() over(partition by deptno order by salary desc) from EmployeeData
 go
 select name, salary,deptno, dense_rank() over(partition by deptno order by salary desc) from EmployeeData















