Select isnull(TEACHER.TEACHER_NAME, '***') As [�������������],
PULPIT.PULPIT_NAME As �������
From PULPIT Left Outer Join TEACHER
On PULPIT.PULPIT = TEACHER.PULPIT

