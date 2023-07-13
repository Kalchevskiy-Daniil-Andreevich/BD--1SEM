USE UNIVER
go
create function FACULTY_REPORT(@c int) returns @fr table 
([���������] varchar(50), [���-�� ������] int, [���-�� �����] int, [���-�� ��������] int, [���-�� ��������������] int)
as begin
	declare cc cursor static for
	select FACULTY from FACULTY where dbo.COUNT_STUDENTS(FACULTY) > @c;
	declare @f varchar(30);
	open cc;
	fetch cc into @f;
	while @@FETCH_STATUS = 0
	begin
		insert @fr values (@f, dbo.COUNT_PULPIT(@f),dbo.COUNT_GROUPS(@f), dbo.COUNT_STUDENTS(@f),
		dbo.COUNT_PROFESSION(@f));
		fetch cc into @f;
	end;
	return;
end;
go
select * from dbo.FACULTY_REPORT(0);

go
Create Function COUNT_PULPIT(@faculty varchar(20)) returns int
As 
Begin

	Declare @count int;
	Set @count = (select count(*) from PULPIT where FACULTY = @faculty);
	Return @count;

End;

go 
Create Function COUNT_GROUPS(@faculty varchar(20)) returns int
As

Begin

	Declare @count int;
	Set @count = (select count(*) from GROUPS where FACULTY = @faculty);
	Return @count;

End;

go 
Create Function COUNT_PROFESSION(@faculty varchar(20)) returns int
As 

Begin

	Declare @count int;
	Set @count = (select count(*) from GROUPS where FACULTY = @faculty);
	Return @count;

End;
go

Create Function COUNT_STUDENTS (@faculty varchar(20)) returns int
As Begin

Declare @countstud int = 0;
Set @countstud = (Select count(*)
From FACULTY Inner Join GROUPS
On FACULTY.FACULTY = GROUPS.FACULTY 
Inner Join STUDENT
On GROUPS.IDGROUP = STUDENT.IDGROUP
Where FACULTY.FACULTY = @faculty);
Return @countstud;

End;

go
drop function FACULTY_REPORT;

go
Drop function COUNT_PULPIT;
Drop function COUNT_GROUPS;
Drop function COUNT_PROFESSION;
Drop function COUNT_STUDENTS;
