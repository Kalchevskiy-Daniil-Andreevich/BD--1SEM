Select TEACHER.TEACHER_NAME As [Teacher_name], TEACHER.PULPIT As [Pulpit]
From TEACHER
Where TEACHER.PULPIT = '����' For xml PATH,
root('������_��������������');