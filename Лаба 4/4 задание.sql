Select 
GROUPS.FACULTY As ���������,
SUBJECT.PULPIT As �������,
GROUPS.PROFESSION As C������������,
PROGRESS.SUBJECT As ����������,
STUDENT.NAME As [��� ��������],
Case PROGRESS.NOTE
When 6 then '�����'
When 7 then '����'
When 8 then '������'
else '�������� ������������ ��������������� ������ �� 6 �� 8'
end ������ 
From STUDENT Inner Join PROGRESS
On PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT -- ���, ����������, ������
Inner Join GROUPS 
On GROUPS.IDGROUP = STUDENT.IDGROUP -- ���������, �������������
Inner Join SUBJECT
On SUBJECT.SUBJECT = PROGRESS.SUBJECT -- �������
Where PROGRESS.NOTE between 6 and 8
Order by PROGRESS.NOTE Desc