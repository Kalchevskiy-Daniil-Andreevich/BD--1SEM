go
Select TEACHER.TEACHER As [Код преподавателя], TEACHER.TEACHER_NAME As [Имя преподавателя], TEACHER.GENDER As [Пол преподавателя], TEACHER.PULPIT As [Код кафедры]
From TEACHER;	

go
CREATE VIEW [Преподаватель]
As Select TEACHER.TEACHER As [Код преподавателя], TEACHER.TEACHER_NAME As [Имя преподавателя], TEACHER.GENDER As [Пол преподавателя], TEACHER.PULPIT As [Код кафедры]
From TEACHER;

go
Select * From [Преподаватель];

go
Select * From [Преподаватель] order by [Код кафедры];

go
Alter View [Преподаватель]
As Select  TEACHER.TEACHER As [Код студента],
TEACHER.TEACHER_NAME As [Имя преподавателя],
TEACHER.GENDER As [Пол преподавателя],
TEACHER.PULPIT As [Код кафедры] From TEACHER;

go
Drop View[Преподаватель];

