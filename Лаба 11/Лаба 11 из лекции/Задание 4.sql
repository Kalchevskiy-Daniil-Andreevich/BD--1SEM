--- A ---
Set Transaction Isolation Level Read Uncommitted
Begin Transaction
----------- t1 --------------
Select @@SPID, 'insert Auditorium' 'результат', * From AUDITORIUM
Where AUDITORIUM_TYPE = 'ЛК';

Select @@SPID, 'update Pulpit' 'результат', PULPIT, PULPIT_NAME From PULPIT
Where FACULTY = 'ЛХФ';
Commit;
----------- t2 --------------
--- B ---
Begin Transaction 
Select @@SPID
Insert AUDITORIUM values('ПЗ', 300, 150-4);
Update PULPIT Set FACULTY = 'ЛХФ'
Where FACULTY = 'ЛМ'
----------- t1 --------------
----------- t2 --------------
Rollback;
