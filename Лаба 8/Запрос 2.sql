--������ ����� ����� �� ��� xtit ���� ��� ������ 5 �� ��� �� � ���� ������ �� �������� ������� ��
Declare @countOfPulpit int = (
Select count(*) From PULPIT
Where FACULTY = '���'
)

If @countOfPulpit < 5
print @countOfPulpit
else if @countOfPulpit > 5
print '�� 6'

--������� ��������� ���������� � datediff
