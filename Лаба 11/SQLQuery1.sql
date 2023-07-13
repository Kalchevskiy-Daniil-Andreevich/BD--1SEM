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
Select count(*) From AUDITORIUM --неподтвержденное чтение
Commit Transaction
---------не допуск неподвержжд чтен------------------------------------------------------------------------------------
Set Transaction Isolation Level Read Committed
Begin Transaction
Select count(*) From AUDITORIUM

Begin Transaction 
Delete From AUDITORIUM Where AUDITORIUM = '128-1';

Select count(*) From AUDITORIUM

Rollback Transaction 

Select count(*) From AUDITORIUM 
Commit Transaction
--------------------допуск неповтор чтение --------------------------------------------------------------------------------------------------
Set Transaction Isolation Level Read Committed
Begin Transaction
Select count(*) From AUDITORIUM

Begin Transaction 
Delete From AUDITORIUM Where AUDITORIUM = '128-1';
Commit Transaction

Select count(*) From AUDITORIUM 
--данные дважны прочитались по-разному
Commit Transaction
--------------------------не допуск повт чтение----------------------------------------------------------------
Insert into AUDITORIUM values('128-1', 'Ћк', 60, '128-1');

Set Transaction Isolation Level REPEATABLE READ
Begin Transaction
Select count(*) From AUDITORIUM

Begin Transaction 
Delete From AUDITORIUM Where AUDITORIUM = '128-1';

Commit Transaction;

Commit Transaction

-------------------------- допуск фантом чтение----------------------------------------------------------------
Insert into AUDITORIUM values('128-1', 'Ћк', 60, '128-1');

Set Transaction Isolation Level REPEATABLE READ
Begin Transaction
Select count(*) From AUDITORIUM

Begin Transaction 
Insert into AUDITORIUM values('437-1', 'Ћк', 20, '437-1');
Commit Transaction

Select count(*) From AUDITORIUM
--в рамках одной транзакции два результата
Commit Transaction
----------------------------не допуск фантомных записей---------------------------------------------------------------------------
Set Transaction Isolation Level Serializable
Begin Transaction
Select count(*) From AUDITORIUM

Begin Transaction 
Insert into AUDITORIUM values('446-1', 'Ћк', 20, '446-1');
COMMIT Tran
