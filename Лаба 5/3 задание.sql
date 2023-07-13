Select Distinct PULPIT.PULPIT_NAME As [Название кафедр], FACULTY.FACULTY_NAME [Название факультета]
From FACULTY Inner Join PULPIT
On PULPIT.FACULTY = FACULTY.FACULTY 
Inner Join PROFESSION
On FACULTY.FACULTY = PROFESSION.FACULTY
Where (PROFESSION_NAME Like '%Технология%' or PROFESSION_NAME Like '%Технологии%')