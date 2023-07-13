Select * 
From (Select Case when PROGRESS.NOTE between 4 and 5 then 'ќценка от 4-5'
when PROGRESS.NOTE between 6 and 7 then 'ќценка от 6-7'
when PROGRESS.NOTE between 8 and 9 then 'ќценка от 8-9'
else 'ќценка 10'
end As [ќценки],
Count(*) As [ оличество экзаменационных оценок в заданном интер-вале]
From PROGRESS Group by Case 
when PROGRESS.NOTE between 4 and 5 then 'ќценка от 4-5'
when PROGRESS.NOTE between 6 and 7 then 'ќценка от 6-7'
when PROGRESS.NOTE between 8 and 9 then 'ќценка от 8-9'
else 'ќценка 10'
end
) As T
Order by Case [ќценки]
when 'ќценка 10' then 1
when 'ќценка от 8-9' then 2
when 'ќценка от 6-7' then 3
else 4
end