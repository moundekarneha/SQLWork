--recursive stored procedure
use [MyDBPrac]
go
--

alter procedure myprocedure (@id int)
as
begin
print '1'
if(@id<6)
begin
print 'end occured'
end
else
begin
exec myprocedure @id
end
end

exec myprocedure 4