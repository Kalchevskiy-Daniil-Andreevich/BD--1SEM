--- A ---
Set Transaction Isolation Level Read Committed
Begin Transaction 
Select count(*) From TEACHER Where PULPIT = 'ИСиТ';
----------- t1 --------------
----------- t2 --------------
Select 'update Teacher' 'результат', count(*) From TEACHER
Where PULPIT = 'ИСиТ';
Commit;

--- B ---
Begin Transaction
----------- t1 --------------
Update TEACHER Set PULPIT = 'ИСиТ'
Where PULPIT = 'ИС	'
----------- t2 --------------