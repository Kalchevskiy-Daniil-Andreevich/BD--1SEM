go
Create Table TR_AUDIT
(
ID int identity, -- �����
STMT varchar(20) -- DML-�������� �������� ������� �� ������� �������� ��� �������
	check(STMT in ('INS', 'DEL', 'UPD')),
TRNAME varchar(50), -- ��� ��������
CC varchar(300) -- �����������
)
go

Drop Table TR_AUDIT;
go

Create Trigger TR_TEACHER_UPD
					On TEACHER After Update
As 
Declare @a1 varchar(20), @a2 varchar(20), @a3 char(1), @a4 varchar(20), @in varchar(300);
Print '�������� ���������'
Set @a1 = (Select TEACHER From INSERTED);
Set @a2 = (Select TEACHER_NAME From INSERTED);
Set @a3 = (Select Gender From INSERTED);
Set @a4 = (Select PULPIT From INSERTED);
Set @in = cast(@a1 as varchar(100)) + ' ' + cast(@a2 as varchar(100)) + ' ' + cast(@a3 as varchar(1)) + ' ' + cast(@a4 as varchar(20));
Set @a1 = (Select TEACHER From DELETED);
Set @a2 = (Select TEACHER_NAME From DELETED);
Set @a3 = (Select Gender From DELETED);
Set @a4 = (Select PULPIT From DELETED);
Set @in = cast(@a1 as varchar(100)) + ' ' + cast(@a2 as varchar(100)) + ' ' + cast(@a3 as varchar(1)) + ' ' + cast(@a4 as varchar(20));
Insert into TR_AUDIT(STMT, TRNAME, CC) values ('UPD', 'TR_TEACHER_UPD', @in);
Return;
go

Insert into TEACHER (TEACHER, TEACHER_NAME, GENDER, PULPIT)
values ('����', '���������� ����', '�', '��');

Update TEACHER Set TEACHER = '�����'
Where TEACHER = '���'
Select * From TR_AUDIT;
go

Drop Trigger TR_TEACHER_UPD;
