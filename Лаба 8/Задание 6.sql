Select Case
When PROGRESS.NOTE between 4 and 5 then 'Оценка от 4 до 5'
When PROGRESS.NOTE between 6 and 7 then 'Оценка от 6 до 7'
When PROGRESS.NOTE between 8 and 9 then 'Оценка от 8 до 9'
When PROGRESS.NOTE between 9 and 10 then 'Оценка от 9 до 10'
else 'Получил оценку меньше 4'
end Оценка, count(*) [Количество]
From PROGRESS
Group by case
When PROGRESS.NOTE between 4 and 5 then 'Оценка от 4 до 5'
When PROGRESS.NOTE between 6 and 7 then 'Оценка от 6 до 7'
When PROGRESS.NOTE between 8 and 9 then 'Оценка от 8 до 9'
When PROGRESS.NOTE between 9 and 10 then 'Оценка от 9 до 10'
else 'Получил оценку меньше 4'
end
