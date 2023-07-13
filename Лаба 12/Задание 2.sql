Use UNIVER
go

Create Procedure PSUBJECT
As
Begin

Declare @k int = (Select count(*) From SUBJECT);
Select * From SUBJECT;
Return @k;

end;
go

Declare @k int = 0;
EXEC @k = PSUBJECT;
Print 'Количество названий дисциплин, кафедр, кодов дисциплин = ' + cast(@k as varchar(300));
go

Alter Procedure PSUBJECT @p varchar(20), @c int output
As Begin

Declare @k int = (Select count(*) From SUBJECT);
print 'параметры: @p = ' + @p + ',@c = ' + cast(@c as varchar(300));
Select * From SUBJECT Where PULPIT = @p;
Set @c = @@ROWCOUNT;
return @k;

end;

go

Declare @k int = 0, @r int = 14, @p varchar(20);
Exec @k = PSUBJECT @p = 'ИСиТ', @c = @r output;
print 'Общее количество дисциплин ' + cast(@k as varchar(30));
print 'Количество дисциплин на кафедре ' + cast(@p as varchar(30)) + '=' + cast (@r as varchar(30));
go

Drop Procedure PSUBJECT;