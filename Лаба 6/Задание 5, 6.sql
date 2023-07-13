Select PROGRESS.SUBJECT [Дисциплина], GROUPS.PROFESSION [Специальность], 
round (avg(cast(PROGRESS.NOTE as float (4))),2) [Средняя оценка]
From FACULTY, GROUPS, PROGRESS
Where FACULTY.FACULTY Like 'ТОВ%'
Group by GROUPS.PROFESSION, PROGRESS.SUBJECT

Select PROGRESS.SUBJECT [Дисциплина], GROUPS.PROFESSION [Специальность], 
round (avg(cast(PROGRESS.NOTE as float (4))),2) [Средняя оценка]
From FACULTY, GROUPS, PROGRESS
Where FACULTY.FACULTY Like 'ТОВ%'
Group by Rollup(GROUPS.PROFESSION, PROGRESS.SUBJECT);

Select PROGRESS.SUBJECT [Дисциплина], GROUPS.PROFESSION [Специальность], 
round (avg(cast(PROGRESS.NOTE as float (4))),2) [Средняя оценка]
From FACULTY, GROUPS, PROGRESS
Where FACULTY.FACULTY Like 'ТОВ%'
Group by Cube(GROUPS.PROFESSION, PROGRESS.SUBJECT);


