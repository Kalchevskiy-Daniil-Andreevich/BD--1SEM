go
Select FACULTY.FACULTY_NAME [Название факультета], PULPIT.FACULTY [Название кафедр]
From FACULTY, PULPIT;

go
Alter view [Количество кафедр] With Schemabinding
As Select FACULTY.FACULTY_NAME [Название факультета], PULPIT.FACULTY [Название кафедр]
From dbo.FACULTY Inner Join dbo.PULPIT
On FACULTY.FACULTY = PULPIT.FACULTY

go
Select * From [Количество кафедр]
--Привязываетпредставлениекcхеметаблицы,покоторойоносоздается