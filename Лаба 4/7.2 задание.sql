Select isnull(TEACHER.TEACHER_NAME, '***') [�������������],
PULPIT.PULPIT_NAME As �������
From PULPIT RIght Outer Join TEACHER
On PULPIT.PULPIT = TEACHER.PULPIT
