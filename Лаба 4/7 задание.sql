Select isnull(TEACHER.TEACHER_NAME, '***') [Преподаватель],
PULPIT.PULPIT_NAME As Кафедра
From TEACHER Right Outer Join PULPIT
On TEACHER.PULPIT = PULPIT.PULPIT
