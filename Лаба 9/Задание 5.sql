go
Create table #EM
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
Insert #EM(TKEY, TFIELD)
values (floor(3000*RAND()), REPLICATE('строка', 10));
set @i = @i+1
end;

go
Select count(*) [Количество строк] from #EM
Select * From #EM

go
Create	index #EM_TKEY ON #EM(TKEY);

go
Select name [Индекс], avg_fragmentation_in_percent [Фрагментация (%)] 
From sys.dm_db_index_physical_stats(DB_ID(N'TEMPDB'),
OBJECT_ID(N'#EM'), NULL, NULL, NULL) ss
join sys.indexes ii on ss.object_id = ii.object_id and ss.index_id=ii.index_id
Where name is not null;

go
INSERT top(10000) #EM(TKEY, TFIELD) select TKEY, TFIELD from #EM;

go
Alter Index #EM_TKEY on #EM reorganize

go
Alter Index #EM_TKEY on #EM rebuild with (online = off);

go
Drop Table #EM;

