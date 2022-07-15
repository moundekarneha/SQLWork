--cursor - this is a temporary memory -aloocated by db server at the time of performing dml operation by user on table- for storing tables
--types -- implicit and explicit cursor
-- implicit cursor - default and aloocated by db server when we perform dml operation
--explicit cursor - created by user and fetch data as row by row manner 
--method  to fetch cursor data - total 6 methods are there

--next, first, last , prior, absolute n, relative n
use MyDBPrac
go
select * from EmployeeData
--ex - without cursor variable
go
declare csr cursor scroll for select * from EmployeeData
open csr
fetch last from csr
fetch prior from csr
fetch absolute 7 from csr
fetch relative -2 from csr
fetch relative 2 from csr
fetch first from csr
fetch next from csr
go
select * from EmployeeData
go


--with cursor variable
declare mycr cursor scroll for select id, name from EmployeeData
declare @eid int, @ename varchar(20)
open mycr 
fetch last from mycr into @eid,@ename
print 'Employee Id : '+cast(@eid as varchar)+' name : '+@ename

close mycr
go
deallocate mycur


---
























