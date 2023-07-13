go
Select SUBJECT.SUBJECT [Код], SUBJECT.SUBJECT_NAME [Наименование дисциплины], SUBJECT.PULPIT [Код кафедры]
From SUBJECT

go 
Create View [Дисциплины]
As Select Top 10 SUBJECT.SUBJECT [Код], SUBJECT.SUBJECT_NAME [Наименование дисциплины], SUBJECT.PULPIT [Код кафедры]
From SUBJECT
Order by SUBJECT_NAME

go
Select * From [Дисциплины]

go 
Drop view [Дисциплины]