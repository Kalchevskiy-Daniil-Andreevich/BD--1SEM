use UNIVER
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

Declare @F Int = dbo.COUNT_STUDENTS('ХТиТ');
Print 'Количество студентов: ' + CAST(@F as varchar(4));

go

Alter Function COUNT_STUDENTS (@faculty varchar(20), @Prof varchar(20) = null ) returns int
As Begin

 Declare @countstud int = 0;
Set @countstud = (Select count(*)
From FACULTY Inner Join GROUPS
On FACULTY.FACULTY = GROUPS.FACULTY 
Inner Join STUDENT
On GROUPS.IDGROUP = STUDENT.IDGROUP
Where FACULTY.FACULTY = @faculty And
GROUPS.PROFESSION = isnull(@Prof, GROUPS.PROFESSION));
Return @countstud;

End;
go

SELECT F.FACULTY [Факультет], DBO.COUNT_STUDENTS(F.FACULTY, G.PROFESSION) [Количество студентов] 
FROM FACULTY F JOIN GROUPS G
ON F.FACULTY = G.FACULTY
go

Drop Function COUNT_STUDENTS;
