go
Create Function FCTEACHER(@pul varchar(8)) returns int
As Begin
Declare @COUNT int = (Select COUNT(*) From TEACHER 
Where PULPIT = ISNULL(@pul, PULPIT));
Return @COUNT;
End;

go
Select Distinct PULPIT [Кафедра], DBO.FCTEACHER(PULPIT) [Количество преподавателей]
From TEACHER
Select DBO.FCTEACHER(NULL) [Всего преподавателей]
go

Drop Function FCTEACHER;