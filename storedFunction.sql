use MyDBPrac 
--
go 
--stored function- T/sql
--scalar valued function and table valued function
--scalar function - which return single value only / single column value
 create function TaxAmount(@amount numeric(10,2)) 
 returns numeric(8,2) 
 as
 begin
 return @amount * 0.1
 end;
 go
 select * from EmployeeData
 go
 select id,name, salary ,dbo.TaxAmount(salary) as tax from EmployeeData
 go 
 --scalar function to calculate gross salary
create function F_grossSal(@eid int)
returns money
as 
begin

declare @basic money, @hra money, @da money, @pf money, @gross money 

select @basic=salary from EmployeeData where id= @eid 

set @hra = @basic*0.1
set @da = @basic *0.2
set @pf = @basic * 0.1
set @gross = @basic+@hra+@da+@pf

return @gross

end

--calling scalar function
select dbo.F_grossSal(2) select * from EmployeeData


go
----Table valued function= function will return more than one value / more than one column value
create function GetDept(@department varchar(30))
returns table 
as
return (select * from EmployeeData where dept=@department)

go
--calling table valued function
select * from GetDept('HR')
















































