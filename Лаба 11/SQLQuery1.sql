--1--
Set Transaction Isolation Level Read Uncommitted
Begin Transaction
Select count(*) From AUDITORIUM
--2--
Begin Transaction 
Delete From AUDITORIUM Where AUDITORIUM = '128-1';
--3--
Select count(*) From AUDITORIUM
--4--
Rollback Transaction 
--5--
Select count(*) From AUDITORIUM --���������������� ������
Commit Transaction
---------�� ������ ����������� ����------------------------------------------------------------------------------------
Set Transaction Isolation Level Read Committed
Begin Transaction
Select count(*) From AUDITORIUM

Begin Transaction 
Delete From AUDITORIUM Where AUDITORIUM = '128-1';

Select count(*) From AUDITORIUM

Rollback Transaction 

Select count(*) From AUDITORIUM 
Commit Transaction
--------------------������ �������� ������ --------------------------------------------------------------------------------------------------
Set Transaction Isolation Level Read Committed
Begin Transaction
Select count(*) From AUDITORIUM

Begin Transaction 
Delete From AUDITORIUM Where AUDITORIUM = '128-1';
Commit Transaction

Select count(*) From AUDITORIUM 
--������ ������ ����������� ��-�������
Commit Transaction
--------------------------�� ������ ���� ������----------------------------------------------------------------
Insert into AUDITORIUM values('128-1', '��', 60, '128-1');

Set Transaction Isolation Level REPEATABLE READ
Begin Transaction
Select count(*) From AUDITORIUM

Begin Transaction 
Delete From AUDITORIUM Where AUDITORIUM = '128-1';

Commit Transaction;

Commit Transaction

-------------------------- ������ ������ ������----------------------------------------------------------------
Insert into AUDITORIUM values('128-1', '��', 60, '128-1');

Set Transaction Isolation Level REPEATABLE READ
Begin Transaction
Select count(*) From AUDITORIUM

Begin Transaction 
Insert into AUDITORIUM values('437-1', '��', 20, '437-1');
Commit Transaction

Select count(*) From AUDITORIUM
--� ������ ����� ���������� ��� ����������
Commit Transaction
----------------------------�� ������ ��������� �������---------------------------------------------------------------------------
Set Transaction Isolation Level Serializable
Begin Transaction
Select count(*) From AUDITORIUM

Begin Transaction 
Insert into AUDITORIUM values('446-1', '��', 20, '446-1');
COMMIT Tran
