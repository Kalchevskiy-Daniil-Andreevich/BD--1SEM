Select Case
When PROGRESS.NOTE between 4 and 5 then '������ �� 4 �� 5'
When PROGRESS.NOTE between 6 and 7 then '������ �� 6 �� 7'
When PROGRESS.NOTE between 8 and 9 then '������ �� 8 �� 9'
When PROGRESS.NOTE between 9 and 10 then '������ �� 9 �� 10'
else '������� ������ ������ 4'
end ������, count(*) [����������]
From PROGRESS
Group by case
When PROGRESS.NOTE between 4 and 5 then '������ �� 4 �� 5'
When PROGRESS.NOTE between 6 and 7 then '������ �� 6 �� 7'
When PROGRESS.NOTE between 8 and 9 then '������ �� 8 �� 9'
When PROGRESS.NOTE between 9 and 10 then '������ �� 9 �� 10'
else '������� ������ ������ 4'
end
