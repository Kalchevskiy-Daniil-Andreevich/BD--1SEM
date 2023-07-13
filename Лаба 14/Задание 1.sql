go
--Таблица предназначена для добавления в нее строк триггерами. 
Create Table TR_AUDIT
(
ID int identity, -- номер
STMT varchar(20) -- DML-оператор помещаем событие на которое сработал наш триггер
	check(STMT in ('INS', 'DEL', 'UPD')),
TRNAME varchar(100), -- имя триггера
CC varchar(300) -- комментарий
)
go

Drop Table TR_AUDIT;
go

Create Trigger TR_TEACHER_INS
					On TEACHER After Insert
As 
Declare @a1 varchar(20), @a2 varchar(20), @a3 char(1), @a4 varchar(20), @in varchar(300);
Print 'Операция вставки';
Set @a1 = (Select TEACHER From INSERTED);
Set @a2 = (Select TEACHER_NAME From INSERTED);
Set @a3 = (Select Gender From INSERTED);
Set @a4 = (Select PULPIT From INSERTED);
Set @in = cast(@a1 as varchar(100)) + ' ' + cast(@a2 as varchar(100)) + ' ' + cast(@a3 as varchar(1)) + ' ' + cast(@a4 as varchar(20)) + ' ';
Insert into TR_AUDIT(STMT, TRNAME, CC) values ('INS', 'TR_TEACHER_INS', @in);
Return;
go

Insert into TEACHER (TEACHER, TEACHER_NAME, GENDER, PULPIT)
values ('Жук', 'Кальчевский Даниил', 'м', 'ИСиТ');
Select * From TR_AUDIT;
go

Drop Trigger TR_TEACHER_INS;
