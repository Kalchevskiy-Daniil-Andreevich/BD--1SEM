Select isnull(TEACHER.TEACHER_NAME, '***') [Преподаватель],
PULPIT.PULPIT_NAME As Кафедра
From PULPIT RIght Outer Join TEACHER
On PULPIT.PULPIT = TEACHER.PULPIT
