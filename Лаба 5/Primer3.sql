--������� ��� ������� � ������ x���
Select FACULTY.FACULTY as [���������], PULPIT.PULPIT as [�������]
From FACULTY, PULPIT
Where FACULTY.FACULTY = PULPIT.FACULTY and
FACULTY.FACULTY In (Select FACULTY from FACULTY
Where (FACULTY Like '����'))