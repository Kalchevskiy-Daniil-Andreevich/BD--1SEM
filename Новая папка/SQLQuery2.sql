go
Select GROUPS.FACLT As [���������], GROUPS.PROF As [�������������], STUDS.IDGROUP As [������], STUDS.NAMES As [���], STUDS.BDAY As [���� ��������]
From GROUPS Inner Join STUDS
On GROUPS.IDGR = STUDS.IDGROUP And
STUDS.BDAY In (Select BDAY From STUDS
Where (BDAY Between '2004-05-12' And '2005-09-01'))
Order by BDAY

