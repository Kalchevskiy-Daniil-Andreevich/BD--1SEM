Select PULPIT.PULPIT_NAME As �������, 
isnull(TEACHER.TEACHER_NAME, '***') As �������������
From PULPIT FULL Outer Join TEACHER
On PULPIT.PULPIT = TEACHER.PULPIT
Where TEACHER.TEACHER_NAME is null

--�������� �������� �������������, ���� ����������� �������������� ����� �� ������� �� �������, � ������� ������� �������� �������.
Select PULPIT.PULPIT_NAME As �������,
TEACHER.TEACHER_NAME As �������������
From PULPIT FULL Outer Join TEACHER
On PULPIT.PULPIT = TEACHER.PULPIT
Where PULPIT.PULPIT_NAME is not null And TEACHER.TEACHER_NAME is not null

Select isnull(PULPIT.PULPIT_NAME, '***') As �������,
TEACHER.TEACHER_NAME As �������������
From TEACHER FULL Outer Join PULPIT
On  PULPIT.PULPIT_NAME = TEACHER.TEACHER_NAME
Where PULPIT.PULPIT_NAME is null

Select isnull(PULPIT.PULPIT_NAME, '***') As �������,
TEACHER.TEACHER_NAME As �������������
From  PULPIT FULL Outer Join TEACHER
On  PULPIT.PULPIT_NAME = TEACHER.TEACHER_NAME
Where PULPIT.PULPIT_NAME is null
