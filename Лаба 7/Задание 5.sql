go
Select SUBJECT.SUBJECT [���], SUBJECT.SUBJECT_NAME [������������ ����������], SUBJECT.PULPIT [��� �������]
From SUBJECT

go 
Create View [����������]
As Select Top 10 SUBJECT.SUBJECT [���], SUBJECT.SUBJECT_NAME [������������ ����������], SUBJECT.PULPIT [��� �������]
From SUBJECT
Order by SUBJECT_NAME

go
Select * From [����������]

go 
Drop view [����������]