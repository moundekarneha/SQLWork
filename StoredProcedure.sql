--stored Procedure - it is precompiled code
use MyDBPrac
--
go
create procedure MyProcedure
as
begin
select * from EmployeeData
end
go
 
execute MyProcedure
go
exec MyProcedure