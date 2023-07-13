set nocount on
if exists (Select * From SYS.OBJECTS
Where OBJECT_ID = object_id(N'DBO.myTable'))
Drop table myTable;

Declare @c int, @flag char = 'c';
SET IMPLICIT_TRANSACTIONS ON
Create table myTable(K int);
Insert myTable values (1),(2),(3);
Set @c = (Select count (*) From myTable);
print 'Количество строк в таблице myTable: ' + cast(@c as varchar(2));
if @flag = 'c' commit;
else rollback;
SET IMPLICIT_TRANSACTIONS OFF

if exists(Select * From SYS.OBJECTS 
Where OBJECT_ID = object_id(N'DBO.myTable'))
Print 'Таблица myTable есть';
else print 'Таблицы myTable нет'