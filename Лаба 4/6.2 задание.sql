Select isnull(TEACHER.TEACHER_NAME, '***') As [�������������],
PULPIT.PULPIT_NAME As �������
From PULPIT Right Outer Join TEACHER
On PULPIT.PULPIT = TEACHER.PULPIT
