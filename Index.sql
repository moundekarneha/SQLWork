-- index - used retrive data faster
--created on col and that col is used as index key
use [MyDBPrac]
go
select * from EmployeeData
go
--index creation
create index i1 on EmployeeData(salary)
go
create index i2 on EmployeeData(salary asc)
go
--to see help index created on table
sp_helpindex EmployeeData
go
--to drop index
drop index  EmployeeData.i1
go
--clustered and non - clustered index
--clustered index - creates physical order of data within table - pk will automatically creates clustered index - only one clustered index can create
 --create clustered index emp_index on EmployeeData(deptno)
  
 --non -clustered index - order of data within index- can create multiple non clustered indexs
 create nonclustered index indexnon on EmployeeData(dept)
 go 
 go