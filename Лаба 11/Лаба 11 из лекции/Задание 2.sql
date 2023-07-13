--свойство атомарности явной транзакции
Begin Try
Begin Transaction

Delete PROGRESS Where IDSTUDENT = '1030';
Insert PROGRESS values('ОАиП', 1031, '2013-10-01', 5);
Insert PROGRESS values('ООП', 1032, '2015-10-01', 8);

Commit Transaction;

Select * From PROGRESS

End Try

Begin Catch

print 'Ошибка: ' + case
When error_number() = 2627 and patindex('%PK_PROGRESS%', error_message()) > 0
then 'Дублирование предмета'
else 'Неизвестная ошибка: ' + cast(error_number() as varchar(5)) + error_message()
end;

If @@TRANCOUNT > 0
Rollback Transaction; 

End Catch;