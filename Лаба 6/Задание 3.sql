Select * 
From (Select Case when PROGRESS.NOTE between 4 and 5 then '������ �� 4-5'
when PROGRESS.NOTE between 6 and 7 then '������ �� 6-7'
when PROGRESS.NOTE between 8 and 9 then '������ �� 8-9'
else '������ 10'
end As [������],
Count(*) As [���������� ��������������� ������ � �������� �����-����]
From PROGRESS Group by Case 
when PROGRESS.NOTE between 4 and 5 then '������ �� 4-5'
when PROGRESS.NOTE between 6 and 7 then '������ �� 6-7'
when PROGRESS.NOTE between 8 and 9 then '������ �� 8-9'
else '������ 10'
end
) As T
Order by Case [������]
when '������ 10' then 1
when '������ �� 8-9' then 2
when '������ �� 6-7' then 3
else 4
end