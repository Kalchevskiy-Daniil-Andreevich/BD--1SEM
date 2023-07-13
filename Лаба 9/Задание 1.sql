go
use UNIVER
exec SP_HELPINDEX 'AUDITORIUM'

go
Create table #EXPLORE
(
TKEY int,
CC int identity(1,1),
TFIELD varchar (100)
);

go
Set nocount on;
Declare @i int = 0;
While @i < 1000
begin
Insert #EXPLORE (TKEY, TFIELD)
values (floor(3000*RAND()), REPLICATE('строка', 10));
If (@i % 100 = 0)
print @i;
set @i = @i+1
end;

go
Select count(*) [ оличество строк] from #EXPLORE
Select * From #EXPLORE

checkpoint;  --фиксаци€ Ѕƒ
DBCC DROPCLEANBUFFERS;  --очистить буферный кэш

go
CREATE clustered index #EXPLORE_CLU on #EXPLORE(TKEY asc)

go
Select * from #EXPLORE where TKEY between 1500 and 2500 order by TKEY;

go
Drop index #EXPLORE_CLU on #EXPLORE

go
Drop table #EXPLORE
--запросапозвол€етвключитьвсоставиндекснойстрокизначени€одногоилинесколькихнеиндексируемыхстолбцов
--используетс€дл€определени€числаинтерваловвременимеждудвум€датами.