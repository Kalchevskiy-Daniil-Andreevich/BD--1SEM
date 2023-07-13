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

Declare @n int = 0;
EXEC @n = PSUBJECT;
Print 'Количество названий дисциплин, кафедр, кодов дисциплин = ' + cast(@n as varchar(300));
go

Alter Procedure PSUBJECT @p varchar(20)
As Begin

Declare @k int = (Select count(*) From SUBJECT);
Select * From SUBJECT Where	PULPIT = @p;

end;
go

Drop Procedure PSUBJECT;
go

Create Table #SUBJECT
(
SUBJECT char(10),
SUBJECT_NAME varchar(100),
PULPIT char(20)
);

Insert #SUBJECT Exec PSUBJECT @p = 'ИСиТ';
Select * From #SUBJECT
go

Drop TABLE #SUBJECT	

