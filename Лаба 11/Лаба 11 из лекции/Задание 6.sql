Set Transaction Isolation Level REPEATABLE READ
Begin Transaction
Select TEACHER From TEACHER
WHERE PULPIT = 'ЛВ';
----------- t1 --------------
----------- t2 --------------
Select case 
When TEACHER = 'РЖК' then 'Insert Teacher'
Else ''
End 'результат', TEACHER From TEACHER Where PULPIT = 'ЛВ';
commit;