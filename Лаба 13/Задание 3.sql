go
Create Function FFACPUL (@fac varchar(20), @pulp varchar(20)) returns table 
As Return
Select F.FACULTY [���������], P.PULPIT [�������] 
From FACULTY F Left Outer Join PULPIT P
On F.FACULTY = P.FACULTY
Where F.FACULTY = isnull(@fac, F.FACULTY) And
P.PULPIT = isnull(@pulp, P.PULPIT);
go

SELECT * FROM DBO.FFACPUL(NULL, NULL); --����������������������
SELECT * FROM DBO.FFACPUL('����', NULL); --���������������
SELECT * FROM DBO.FFACPUL(NULL, '�����');--����������������������
SELECT * FROM DBO.FFACPUL('����', '�����');-- ���������������������������
go

Drop Function FFACPUL;
