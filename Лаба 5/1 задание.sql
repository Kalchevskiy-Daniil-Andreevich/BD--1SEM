Select PULPIT.PULPIT_NAME As [�������� ������], FACULTY.FACULTY_NAME [�������� ����������]
From PULPIT, FACULTY 
Where PULPIT.FACULTY = FACULTY.FACULTY  And
FACULTY.FACULTY In(Select FACULTY From PROFESSION
Where (PROFESSION_NAME Like '%����������%' or PROFESSION_NAME Like '%����������%'))

