SELECT p1.SUBJECT [����������], 
p1.NOTE [������],
(SELECT COUNT(*)
FROM PROGRESS 
WHERE p1.IDSTUDENT = PROGRESS.IDSTUDENT
AND p1.NOTE= PROGRESS.NOTE) [����������]
FROM PROGRESS p1
GROUP BY p1.SUBJECT, p1.NOTE, p1.IDSTUDENT
HAVING p1.NOTE IN (8, 9)