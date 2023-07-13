Select STUD.NAMES As [ФИО], PROGR.NOTE [Оценки], GROUPS.FACLT AS [Факультет]
From STUD Inner Join PROGR
On STUD.IDST = PROGR.IDST
Inner Join GROUPS
On STUD.IDGROUP = GROUPS.IDGR And
PROGR.NOTE In (Select Note from PROGR
Where NOTE Between  '4' and '6' and FACLT Like 'ИСит')
UNION
Select STUD.NAMES As [ФИО], PROGR.NOTE [Оценки], GROUPS.FACLT AS [Факультет]
From STUD Inner Join PROGR
On STUD.IDST = PROGR.IDST
Inner Join GROUPS
On STUD.IDGROUP = GROUPS.IDGR And
PROGR.NOTE In (Select Note from PROGR
Where NOTE Between  '4' and '6' and FACLT Like 'ПОиТ')

Select STUD.NAMES As [ФИО], PROGR.NOTE [Оценки], GROUPS.FACLT AS [Факультет]
From STUD Inner Join PROGR
On STUD.IDST = PROGR.IDST
Inner Join GROUPS
On STUD.IDGROUP = GROUPS.IDGR And
PROGR.NOTE In (Select Note from PROGR
Where NOTE Between  '4' and '6' and FACLT Like 'ИСит')
UNION ALL
Select STUD.NAMES As [ФИО], PROGR.NOTE [Оценки], GROUPS.FACLT AS [Факультет]
From STUD Inner Join PROGR
On STUD.IDST = PROGR.IDST
Inner Join GROUPS
On STUD.IDGROUP = GROUPS.IDGR And
PROGR.NOTE In (Select Note from PROGR
Where NOTE Between  '4' and '6' and FACLT Like 'ПОиТ')