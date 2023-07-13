Select PULPIT.PULPIT_NAME As [Название кафедр], FACULTY.FACULTY_NAME [Название факультета]
From PULPIT, FACULTY 
Where PULPIT.FACULTY = FACULTY.FACULTY  And
FACULTY.FACULTY In(Select FACULTY From PROFESSION
Where (PROFESSION_NAME Like '%технология%' or PROFESSION_NAME Like '%технологии%'))

