Select Distinct PULPIT.PULPIT_NAME As [�������� ������], FACULTY.FACULTY_NAME [�������� ����������]
From FACULTY Inner Join PULPIT
On PULPIT.FACULTY = FACULTY.FACULTY 
Inner Join PROFESSION
On FACULTY.FACULTY = PROFESSION.FACULTY
Where (PROFESSION_NAME Like '%����������%' or PROFESSION_NAME Like '%����������%')