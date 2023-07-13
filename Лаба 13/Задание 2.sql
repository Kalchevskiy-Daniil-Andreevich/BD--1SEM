go
Create Function FSUBJECTS (@p varchar(20)) returns varchar(300) 
AS Begin
Declare @tv char(20);
Declare @t varchar(300) = 'Перечень дисциплин в отчете: ';
Declare zkSubject Cursor Local
For Select SUBJECT From SUBJECT Where PULPIT = @p;
Open zkSubject;

Fetch zkSubject into @tv;
While @@FETCH_STATUS = 0
Begin

set @t = @t + ',' +rtrim(@tv);
Fetch zkSubject into @tv;

end;
return @t;
end;
go

SELECT PULPIT [Кафедра], DBO.FSUBJECTS(PULPIT) [Дисциплины] FROM PULPIT
go

Drop Function FSUBJECTS;
