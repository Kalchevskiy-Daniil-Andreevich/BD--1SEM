Select AUDITORIUM_TYPE.AUDITORIUM_TYPENAME As [��� ���������],
max(AUDITORIUM_CAPACITY) [������������ ����������� ���������],
min(AUDITORIUM_CAPACITY) [����������� ����������� ���������],
avg(AUDITORIUM_CAPACITY) [������� ����������� ���������],
sum(AUDITORIUM_CAPACITY) [��������� ����������� ���������],
count(*) [����� ���������� ���������]
From AUDITORIUM Inner Join AUDITORIUM_TYPE
On AUDITORIUM.AUDITORIUM_TYPE = AUDITORIUM_TYPE.AUDITORIUM_TYPE
Group by AUDITORIUM_TYPENAME

