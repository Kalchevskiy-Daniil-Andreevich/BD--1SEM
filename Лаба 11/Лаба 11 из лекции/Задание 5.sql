--- A ---
Set Transaction Isolation Level Read Committed
Begin Transaction 
Select count(*) From TEACHER Where PULPIT = '����';
----------- t1 --------------
----------- t2 --------------
Select 'update Teacher' '���������', count(*) From TEACHER
Where PULPIT = '����';
Commit;

--- B ---
Begin Transaction
----------- t1 --------------
Update TEACHER Set PULPIT = '����'
Where PULPIT = '��	'
----------- t2 --------------