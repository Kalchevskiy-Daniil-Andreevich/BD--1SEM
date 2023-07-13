go
Create Trigger DDL_UNIVER ON DATABASE FOR DDL_DATABASE_LEVEL_EVENTS
As
	Declare @T VARCHAR(50) = EVENTDATA().value('(/EVENT_INSTANCE/EVENTTYPE)[1]', 'VARCHAR(50)');
	Declare @T1 VARCHAR(50) = EVENTDATA().value('(/EVENT_INSTANCE/OBJECTNAME)[1]', 'VARCHAR(50)');
    Declare @T2 VARCHAR(50) = EVENTDATA().value('(/EVENT_INSTANCE/OBJECTTYPE)[1]', 'VARCHAR(50)'); 
	If @T1 = 'TR_AUDIT' 
    Begin
       PRINT 'Тип события: '+@T;
       PRINT 'Имя объекта: '+@T1;
       PRINT 'Тип объекта: '+@T2;
       RAISERROR( N'Операции с таблицей TR_AUDIT запрещены!', 16, 1);  
       Rollback;    
   End;
Return;
Alter Table TR_AUDIT Drop Column TEACHER_NAME;