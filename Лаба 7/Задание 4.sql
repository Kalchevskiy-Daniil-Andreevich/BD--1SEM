go 
Select AUDITORIUM.AUDITORIUM [��� ���������], AUDITORIUM.AUDITORIUM_TYPE [��� ���������]
From AUDITORIUM

go
Create view [���������� ���������]([��� ���������], [��� ���������])
As Select AUDITORIUM.AUDITORIUM [��� ���������], AUDITORIUM.AUDITORIUM_TYPE [��� ���������]
From AUDITORIUM
Where AUDITORIUM_TYPE LiKE '��' With Check Option;

go
Select * From [���������� ���������]

go 
Insert [���������� ���������] values(40, '��')

go
Drop view [���������� ���������]
