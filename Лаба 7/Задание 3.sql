go 
Select AUDITORIUM.AUDITORIUM [Код аудитории], AUDITORIUM.AUDITORIUM_TYPE [Тип аудитории]
From AUDITORIUM

go
Create view [Аудитории]([Код аудитории], [Тип аудитории])
As Select AUDITORIUM.AUDITORIUM [Код аудитории], AUDITORIUM.AUDITORIUM_TYPE [Тип аудитории]
From AUDITORIUM
Where AUDITORIUM_TYPE LiKE 'ЛК'

go
Select * From [Аудитории]

go 
Insert Аудитории values(580, 'ЛК')
Insert Аудитории values(700, 'ЛК')

go
DELETE FROM Аудитории
WHERE [Тип аудитории] = 'ЛК'

go
Drop view [Аудитории]
