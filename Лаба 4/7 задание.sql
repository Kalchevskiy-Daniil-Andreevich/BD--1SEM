Select isnull(TEACHER.TEACHER_NAME, '***') [�������������],
PULPIT.PULPIT_NAME As �������
From TEACHER Right Outer Join PULPIT
On TEACHER.PULPIT = PULPIT.PULPIT
