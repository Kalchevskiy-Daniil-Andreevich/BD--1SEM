go
Create table #EX
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
Insert #EX(TKEY, TFIELD)
values (floor(3000*RAND()), REPLICATE('строка', 10));
set @i = @i+1
end;

go
Select count(*) [Количество строк] from #EX
Select * From #EX

CREATE  index #EX_TKEY_X on #EX(TKEY) INCLUDE (CC)
SELECT CC from #EX where TKEY > 1500

go 
Drop table #EX
--индекспокрытиязапроса
--позволяетвключитьвсоставиндекснойстрокизначенияодногоилинесколькихнеин-дексируемыхстолбцов