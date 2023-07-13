go
Create Function FFACPUL (@fac varchar(20), @pulp varchar(20)) returns table 
As Return
Select F.FACULTY [Факультет], P.PULPIT [Кафедра] 
From FACULTY F Left Outer Join PULPIT P
On F.FACULTY = P.FACULTY
Where F.FACULTY = isnull(@fac, F.FACULTY) And
P.PULPIT = isnull(@pulp, P.PULPIT);
go

SELECT * FROM DBO.FFACPUL(NULL, NULL); --списоквсехкафнавсехфак
SELECT * FROM DBO.FFACPUL('ИДиП', NULL); --всехкафзаданфак
SELECT * FROM DBO.FFACPUL(NULL, 'ЛМиЛЗ');--возврстрокусоотвкафедр
SELECT * FROM DBO.FFACPUL('ТТЛП', 'ЛМиЛЗ');-- возврстроксооткафназаданфак
go

Drop Function FFACPUL;
