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

Drop Procedure PSUBJECT;