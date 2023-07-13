go
Select GROUPS.FACLT As [Факультет], GROUPS.PROF As [Специальность], STUDS.IDGROUP As [Группа], STUDS.NAMES As [ФИО], STUDS.BDAY As [Дата рождения]
From GROUPS Inner Join STUDS
On GROUPS.IDGR = STUDS.IDGROUP And
STUDS.BDAY In (Select BDAY From STUDS
Where (BDAY Between '2004-05-12' And '2005-09-01'))
Order by BDAY

