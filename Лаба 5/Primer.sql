Select QUALIFICATION From PROFESSION
Where FACULTY In (Select FACULTY from FACULTY
Where FACULTY_NAME = '����������������� ���������');

Select FACULTY_NAME From FACULTY
Where FACULTY In(Select FACULTY from PROFESSION
where (QUALIFICATION LIKE '%��������'))

Select FACULTY_NAME From FACULTY
Where FACULTY In(Select FACULTY From PROFESSION
Where (PROFESSION_NAME Like '%������%'))
