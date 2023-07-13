go
Create table #EXPL
(
TKEY int,
CC int identity(1,1),
TFIELD varchar (100)
);

go
Set nocount on;
Declare @i int = 0;
While @i < 10000
begin
Insert #EXPL(TKEY, TFIELD)
values (floor(3000*RAND()), REPLICATE('строка', 10));
set @i = @i+1
end;

go
Select count(*) [ оличество строк] from #EXPL
Select * From #EXPL
--непринимаетс€оптимизатором
go
CREATE index #EX_NONCLU on #EXPL(TKEY, CC)

SELECT * from  #EXPL where  TKEY > 1500 and  CC < 4500;  
SELECT * from  #EXPL order by  TKEY, CC

SELECT * from  #EXPL where TKEY = 556 and  CC > 3
--еслихот€быодноизиндексируемыхзначенийзафиксировать 

Drop table #EXPL
Drop index #EX_NONCLU on #EXPL