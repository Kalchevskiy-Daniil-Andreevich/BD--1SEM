Select STUD.NAMES As [���], PROGR.NOTE [������], GROUPS.FACLT AS [���������]
From STUD Inner Join PROGR
On STUD.IDST = PROGR.IDST
Inner Join GROUPS
On STUD.IDGROUP = GROUPS.IDGR And
PROGR.NOTE In (Select Note from PROGR
Where NOTE Between  '4' and '6' and FACLT Like '����')
UNION
Select STUD.NAMES As [���], PROGR.NOTE [������], GROUPS.FACLT AS [���������]
From STUD Inner Join PROGR
On STUD.IDST = PROGR.IDST
Inner Join GROUPS
On STUD.IDGROUP = GROUPS.IDGR And
PROGR.NOTE In (Select Note from PROGR
Where NOTE Between  '4' and '6' and FACLT Like '����')

Select STUD.NAMES As [���], PROGR.NOTE [������], GROUPS.FACLT AS [���������]
From STUD Inner Join PROGR
On STUD.IDST = PROGR.IDST
Inner Join GROUPS
On STUD.IDGROUP = GROUPS.IDGR And
PROGR.NOTE In (Select Note from PROGR
Where NOTE Between  '4' and '6' and FACLT Like '����')
UNION ALL
Select STUD.NAMES As [���], PROGR.NOTE [������], GROUPS.FACLT AS [���������]
From STUD Inner Join PROGR
On STUD.IDST = PROGR.IDST
Inner Join GROUPS
On STUD.IDGROUP = GROUPS.IDGR And
PROGR.NOTE In (Select Note from PROGR
Where NOTE Between  '4' and '6' and FACLT Like '����')