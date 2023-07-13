go 
Select AUDITORIUM.AUDITORIUM [Код аудитории], AUDITORIUM.AUDITORIUM_TYPE [Тип аудитории]
From AUDITORIUM

go
Create view [Лекционные аудитории]([Код аудитории], [Тип аудитории])
As Select AUDITORIUM.AUDITORIUM [Код аудитории], AUDITORIUM.AUDITORIUM_TYPE [Тип аудитории]
From AUDITORIUM
Where AUDITORIUM_TYPE LiKE 'ЛК' With Check Option;

go
Select * From [Лекционные аудитории]

go 
Insert [Лекционные аудитории] values(40, 'ЛБ')

go
Drop view [Лекционные аудитории]
