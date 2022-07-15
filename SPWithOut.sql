--sp with "out"
use MyDBPrac
go
select * from EmployeeData
go
--procedure
alter procedure SpReturnPf(@eid int, @pf int out, @pt int out)
as 
begin
declare @sal int
select @sal=salary from EmployeeData where id = @eid

set @pf = @sal * 0.1
set @pt = @sal * 0.2
end

go
--output
declare @pfs int, @pts int
execute SpReturnPf 1, @pfs out, @pts out
print @pfs
print @pts

--or
print 'Professional Tax is : '+cast(@pts as varchar)

print 'Professional Funds is : '+cast(@pfs as varchar)

go