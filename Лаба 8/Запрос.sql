-- ��������, ������� ����, ���� �� ������ 10, �� �� ���-��, � ���� ������ �� ������
Declare @students int = (
Select count(*) From PROGRESS Inner Join STUDENT
On PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
Where PROGRESS.SUBJECT = '����')
Begin
If @students > 10
Print @students
Else if @students <10
print '������ 10 ���������!'
end;
-- ������� �� 2, ������ �����
DECLARE @I INT = 1;
WHILE @I < 20
BEGIN 
IF (@I % 2 = 0)
PRINT @I;
SET @I = @I + 1;
END;
-----
declare @avg_note int = (select avg(NOTE) from PROGRESS where SUBJECT = '��')
Begin
if (@avg_note > 5)
print @avg_note
else if (@avg_note < 5)
print '�� �����'
end





