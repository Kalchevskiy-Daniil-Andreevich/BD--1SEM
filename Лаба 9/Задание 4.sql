go
Create table #EXL
(
TKEY int,
CC int identity(1,1),
TFIELD varchar (100)
);

go
Set nocount on;
Declare @i int = 0;
While @i < 20000
begin
Insert #EXL(TKEY, TFIELD)
values (floor(3000*RAND()), REPLICATE('строка', 10));
set @i = @i+1
end;

go
Select count(*) [Количество строк] from #EXL
Select * From #EXL

SELECT TKEY from  #EXL where TKEY between 1000 and 3000; 
SELECT TKEY from  #EXL where TKEY>2000 and  TKEY < 2700  
SELECT TKEY from  #EXL where TKEY = 1750

CREATE  index #EX_WHERE on #EXL(TKEY) where (TKEY>=2000 and 
 TKEY < 2700);  

Drop table #EXL


