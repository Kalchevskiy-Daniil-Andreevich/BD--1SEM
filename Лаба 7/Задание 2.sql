go
Select FACULTY.FACULTY_NAME [�������� ����������], PULPIT.FACULTY [�������� ������]
From FACULTY, PULPIT;

go
Create view [���������� ������]
As Select FACULTY.FACULTY_NAME [�������� ����������], PULPIT.FACULTY [�������� ������]
From FACULTY Inner Join PULPIT
On FACULTY.FACULTY = PULPIT.FACULTY

go
Select * From [���������� ������]

go
Drop view[���������� ������];