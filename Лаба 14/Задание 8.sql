go
Create Trigger TEACH_INS_OF On 
TEACHER INSTEAD OF DELETE
As RAISERROR('�������� ���������', 10, 1);
Return;

go 
DELETE FROM TEACHER WHERE TEACHER = '����';
DROP TRIGGER TR_TEACHER_INS;
DROP TRIGGER TR_TEACHER_DEL;
DROP TRIGGER TR_TEACHER_UPD;
DROP TRIGGER TR_TEACHER;
DROP TRIGGER TR_TEACHER_DEL1;
DROP TRIGGER TR_TEACHER_DEL2;
DROP TRIGGER TR_TEACHER_DEL3;
DROP TRIGGER AUD_TRAN;
DROP TRIGGER TEACH_INS_OF;
DROP TRIGGER DDL_UNIVER;
