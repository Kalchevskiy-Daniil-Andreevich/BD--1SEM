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
On PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
Inner Join GROUPS 
On GROUPS.IDGROUP = STUDENT.IDGROUP
Inner Join SUBJECT
On SUBJECT.SUBJECT = PROGRESS.SUBJECT
Where PROGRESS.NOTE between 6 and 8
ORDER BY 
(Case
when(PROGRESS.NOTE like '6%') then 3
when(PROGRESS.NOTE like '7%') then 1
else 2
end
)