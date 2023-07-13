go
Create Trigger DDL_UNIVER ON DATABASE FOR DDL_DATABASE_LEVEL_EVENTS
As
	Declare @T VARCHAR(50) = EVENTDATA().value('(/EVENT_INSTANCE/EVENTTYPE)[1]', 'VARCHAR(50)');
	Declare @T1 VARCHAR(50) = EVENTDATA().value('(/EVENT_INSTANCE/OBJECTNAME)[1]', 'VARCHAR(50)');
    Declare @T2 VARCHAR(50) = EVENTDATA().value('(/EVENT_INSTANCE/OBJECTTYPE)[1]', 'VARCHAR(50)'); 
	If @T1 = 'TR_AUDIT' 
    Begin
       PRINT '��� �������: '+@T;
       PRINT '��� �������: '+@T1;
       PRINT '��� �������: '+@T2;
       RAISERROR( N'�������� � �������� TR_AUDIT ���������!', 16, 1);  
       Rollback;    
   End;
Return;
Alter Table TR_AUDIT Drop Column TEACHER_NAME;