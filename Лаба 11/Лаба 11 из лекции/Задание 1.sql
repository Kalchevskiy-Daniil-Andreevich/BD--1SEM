Set nocount on
If exists (Select * From SYS.OBJECTS
Where OBJECT_ID = object_id(N'DBO.myTable'))
Drop table myTable;

Declare @c int, @flag char = 'c';
SET IMPLICIT_TRANSACTIONS ON

Create table myTable(K int);
Insert myTable values (1),(2),(3);
Set @c = (Select count (*) From myTable);
Print '���������� ����� � ������� myTable: ' + cast(@c as varchar(2));
If @flag = 'c' commit;
Else rollback;

SET IMPLICIT_TRANSACTIONS OFF

If exists(Select * From SYS.OBJECTS 
Where OBJECT_ID = object_id(N'DBO.myTable'))
Print '������� myTable ����';
Else print '������� myTable ���'



--�����������������������������������
--������������������������������������
--�����������������������������