Select 
GROUPS.FACULTY As Факультет,
SUBJECT.PULPIT As Кафедра,
GROUPS.PROFESSION As Cпециальность,
PROGRESS.SUBJECT As Дисциплина,
STUDENT.NAME As [Имя студента],
Case PROGRESS.NOTE
When 6 then 'шесть'
When 7 then 'семь'
When 8 then 'восемь'
else 'Студенты неполучившие экзаминационные оценки от 6 до 8'
end Оценка 
From STUDENT Inner Join PROGRESS
On PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT -- имя, дисциплина, оценка
Inner Join GROUPS 
On GROUPS.IDGROUP = STUDENT.IDGROUP -- факультет, специальность
Inner Join SUBJECT
On SUBJECT.SUBJECT = PROGRESS.SUBJECT -- Кафедра
Where PROGRESS.NOTE between 6 and 8
Order by PROGRESS.NOTE Desc