
--unnique and non unique index
--unique index- not accept duplicate index - 
--non unique - can accept duplicate

use [MyDBPrac]
go
select * from EmployeeData
--clustered index with unique - will apply if col not contains any duplicate values
go 
--create unique clustered index i3 on EmployeeData(salary)
go
