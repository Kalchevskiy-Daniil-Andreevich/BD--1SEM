Select PROGRESS.SUBJECT [����������], GROUPS.PROFESSION [�������������], 
round (avg(cast(PROGRESS.NOTE as float (4))),2) [������� ������]
From FACULTY, GROUPS, PROGRESS
Where FACULTY.FACULTY Like '���%'
Group by GROUPS.PROFESSION, PROGRESS.SUBJECT

Select PROGRESS.SUBJECT [����������], GROUPS.PROFESSION [�������������], 
round (avg(cast(PROGRESS.NOTE as float (4))),2) [������� ������]
From FACULTY, GROUPS, PROGRESS
Where FACULTY.FACULTY Like '���%'
Group by Rollup(GROUPS.PROFESSION, PROGRESS.SUBJECT);

Select PROGRESS.SUBJECT [����������], GROUPS.PROFESSION [�������������], 
round (avg(cast(PROGRESS.NOTE as float (4))),2) [������� ������]
From FACULTY, GROUPS, PROGRESS
Where FACULTY.FACULTY Like '���%'
Group by Cube(GROUPS.PROFESSION, PROGRESS.SUBJECT);


