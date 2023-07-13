Select AUDITORIUM_TYPE.AUDITORIUM_TYPENAME As [Тип аудитории],
max(AUDITORIUM_CAPACITY) [Максимальная вместимость аудитории],
min(AUDITORIUM_CAPACITY) [Минимальная вместимость аудитории],
avg(AUDITORIUM_CAPACITY) [Средняя вместимость аудитории],
sum(AUDITORIUM_CAPACITY) [Суммарная вместимость аудитории],
count(*) [Общее количество аудиторий]
From AUDITORIUM Inner Join AUDITORIUM_TYPE
On AUDITORIUM.AUDITORIUM_TYPE = AUDITORIUM_TYPE.AUDITORIUM_TYPE
Group by AUDITORIUM_TYPENAME

