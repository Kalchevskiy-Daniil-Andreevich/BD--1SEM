Create Trigger TR_TEACHER 
				On TEACHER After Insert, Delete, Update
As
Declare @a1 varchar(20), @a2 varchar(20), @a3 char(1), @a4 varchar(20), @in varchar(300);
Declare @Ins int = (Select count(*) From INSERTED),
		@Del int = (Select count(*) From DELETED);

If @Ins > 0 and @Del = 0

Begin

Print 'Событие Insert: '
Set @a1 = (Select TEACHER From INSERTED);
Set @a2 = (Select TEACHER_NAME From INSERTED);
Set @a3 = (Select Gender From INSERTED);
Set @a4 = (Select PULPIT From INSERTED);
Set @in = cast(@a1 as varchar(100)) + ' ' + cast(@a2 as varchar(100)) + ' ' + cast(@a3 as varchar(1)) + ' ' + cast(@a4 as varchar(20)) + ' ';
Insert into TR_AUDIT(STMT, TRNAME, CC) values ('INS', 'TR_TEACHER', @in);

End;

else
if @ins = 0 and @del > 0 

Begin

Print 'Событие Delete: '
Set @a1 = (Select TEACHER From DELETED);
Set @a2 = (Select TEACHER_NAME From DELETED);
Set @a3 = (Select Gender From DELETED);
Set @a4 = (Select PULPIT From DELETED);
Set @in = cast(@a1 as varchar(100)) + ' ' + cast(@a2 as varchar(100)) + ' ' + cast(@a3 as varchar(1)) + ' ' + cast(@a4 as varchar(20));
Insert into TR_AUDIT(STMT, TRNAME, CC) values ('DEL', 'TR_TEACHER', @in);

End;

If @Ins > 0 and @Del > 0

Begin

Print 'Событие Update: '
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
Insert into TR_AUDIT(STMT, TRNAME, CC) values ('UPD', 'TR_TEACHER', @in);
End;
Return;
go

INSERT INTO TEACHER(TEACHER, TEACHER_NAME, GENDER, PULPIT) VALUES('КРПТ', 'Криптонова Анастасия Владимировна', 'ж', 'ЛЗиДВ');  
--INSERT INTO TEACHER(TEACHER, TEACHER_NAME, GENDER, PULPIT) VALUES('КРПТ1', 'Криптонова Анастасия Владимировна', 'ж', 'ЛЗиДВ'); 
DELETE FROM TEACHER WHERE TEACHER = 'КРПТ';        
UPDATE TEACHER SET PULPIT = 'ИСиТ' WHERE TEACHER = 'КРПТ';    
SELECT * FROM TR_AUDIT;

--5
INSERT INTO TEACHER(TEACHER, TEACHER_NAME, GENDER, PULPIT) VALUES ('КРПТ', 'Криптонова Анастасия Владимировна', 'ж', 'ИСиТ');
