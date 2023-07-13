go
Create table #EMK
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
Insert #EMK(TKEY, TFIELD)
values (floor(3000*RAND()), REPLICATE('строка', 10));
set @i = @i+1
end;

go
Select count(*) [Количество строк] from #EMK
Select * From #EMK

go
CREATE index #EMK_TKEY on #EMK(TKEY)
with (fillfactor = 65);

INSERT top(50)percent INTO #EMK(TKEY, TFIELD) 
SELECT TKEY, TFIELD  FROM #EMK;

SELECT name [Индекс], avg_fragmentation_in_percent [Фрагментация (%)]
FROM sys.dm_db_index_physical_stats(DB_ID(N'TEMPDB'),    
OBJECT_ID(N'#EMK'), NULL, NULL, NULL) ss  JOIN sys.indexes ii 
ON ss.object_id = ii.object_id and ss.index_id = ii.index_id  
WHERE name is not null;

go
Drop table #EMK;
