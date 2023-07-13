Select isnull(TEACHER.TEACHER_NAME, '***') As [Преподаватель],
PULPIT.PULPIT_NAME As Кафедра
From PULPIT Right Outer Join TEACHER
On PULPIT.PULPIT = TEACHER.PULPIT
