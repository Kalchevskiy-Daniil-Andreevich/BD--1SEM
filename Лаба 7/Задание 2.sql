go
Select FACULTY.FACULTY_NAME [Название факультета], PULPIT.FACULTY [Название кафедр]
From FACULTY, PULPIT;

go
Create view [Количество кафедр]
As Select FACULTY.FACULTY_NAME [Название факультета], PULPIT.FACULTY [Название кафедр]
From FACULTY Inner Join PULPIT
On FACULTY.FACULTY = PULPIT.FACULTY

go
Select * From [Количество кафедр]

go
Drop view[Количество кафедр];