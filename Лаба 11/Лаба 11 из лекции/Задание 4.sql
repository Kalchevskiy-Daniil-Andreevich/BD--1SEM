--- A ---
Set Transaction Isolation Level Read Uncommitted
Begin Transaction
----------- t1 --------------
Select @@SPID, 'insert Auditorium' '���������', * From AUDITORIUM
Where AUDITORIUM_TYPE = '��';

Select @@SPID, 'update Pulpit' '���������', PULPIT, PULPIT_NAME From PULPIT
Where FACULTY = '���';
Commit;
----------- t2 --------------
--- B ---
Begin Transaction 
Select @@SPID
Insert AUDITORIUM values('��', 300, 150-4);
Update PULPIT Set FACULTY = '���'
Where FACULTY = '��'
----------- t1 --------------
----------- t2 --------------
Rollback;
