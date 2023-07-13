--вывести все кафедры с факуль xтит
Select FACULTY.FACULTY as [факультет], PULPIT.PULPIT as [Кафедры]
From FACULTY, PULPIT
Where FACULTY.FACULTY = PULPIT.FACULTY and
FACULTY.FACULTY In (Select FACULTY from FACULTY
Where (FACULTY Like 'ХТиТ'))