Select PULPIT.PULPIT_NAME As Кафедра, 
isnull(TEACHER.TEACHER_NAME, '***') As Преподаватель
From PULPIT FULL Outer Join TEACHER
On PULPIT.PULPIT = TEACHER.PULPIT
Where TEACHER.TEACHER_NAME is null

--Операция является коммутативной, если формируемый результирующий набор не зависит от порядка, в котором указаны исходные таблицы.
Select PULPIT.PULPIT_NAME As Кафедра,
TEACHER.TEACHER_NAME As Преподаватель
From PULPIT FULL Outer Join TEACHER
On PULPIT.PULPIT = TEACHER.PULPIT
Where PULPIT.PULPIT_NAME is not null And TEACHER.TEACHER_NAME is not null

Select isnull(PULPIT.PULPIT_NAME, '***') As Кафедра,
TEACHER.TEACHER_NAME As Преподаватель
From TEACHER FULL Outer Join PULPIT
On  PULPIT.PULPIT_NAME = TEACHER.TEACHER_NAME
Where PULPIT.PULPIT_NAME is null

Select isnull(PULPIT.PULPIT_NAME, '***') As Кафедра,
TEACHER.TEACHER_NAME As Преподаватель
From  PULPIT FULL Outer Join TEACHER
On  PULPIT.PULPIT_NAME = TEACHER.TEACHER_NAME
Where PULPIT.PULPIT_NAME is null
