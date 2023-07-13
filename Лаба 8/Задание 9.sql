Declare @x int = 10, @y int = 0, @z int; 

Begin try 

set @z = @x/@y;

End try 

Begin catch

print 'catch'
print ERROR_NUMBER();
print ERROR_MESSAGE()
print ERROR_LINE();
print ERROR_SEVERITY();
print ERROR_STATE();

End catch