go
Select FACULTY.FACULTY_NAME [�������� ����������], PULPIT.FACULTY [�������� ������]
From FACULTY, PULPIT;

go
Alter view [���������� ������] With Schemabinding
As Select FACULTY.FACULTY_NAME [�������� ����������], PULPIT.FACULTY [�������� ������]
From dbo.FACULTY Inner Join dbo.PULPIT
On FACULTY.FACULTY = PULPIT.FACULTY

go
Select * From [���������� ������]
--�������������������������c�����������,���������������������