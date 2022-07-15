use MyDBPrac
go
go
--table with into to make copy
select * into tb_copys from EmployeeData where 1=2

go
select * from tb_copys
go
--returns employee with same salary 
select * from EmployeeData where salary in (select salary from EmployeeData group by(salary) having count(1)>1 )
go
--nvl function - converts null value to actual value -
select * from EmployeeData
-- select id, dept,name, NVL(deptno,0) from EmployeeData


--coalesce -this function will return col which is not contain any null value from multiple col
select coalesce(id, name) from EmployeeData 