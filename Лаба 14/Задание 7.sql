--AFTER-������� �������� ������ ����������, � ������ �������� ����������� ��������, ����-������������ �������.
go
Create Trigger AUD_TRAN
On AUDITORIUM After Insert, Delete, Update
As Declare @CAPACITY int = (Select AUDITORIUM_CAPACITY From INSERTED)
If (@CAPACITY > 90)

Begin

RAISERROR('��������� ���������� ����������� ���������', 10, 1);
Rollback;

End;
Return;

go
Insert Into AUDITORIUM(AUDITORIUM, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY, AUDITORIUM_NAME) Values('411-4', '��', 120, '411-4');