--выполняться в рамках одной явной транзакции с уровнем изолированности SERIALIZABLE. 
Create Procedure PAUDITORIUM_INSERTX
@a char(20), @n varchar(50), @c int, @t char(10), @tn varchar(50)
As Declare @rc int = 1;

Begin try
Set Transaction Isolation Level SERIALIZABLE;
Begin Transaction
Insert into AUDITORIUM_TYPE(AUDITORIUM_TYPE, AUDITORIUM_TYPENAME) values(@t, @tn);
Exec @rc = PAUDITORIUM_INSERT @a, @n, @c, @t;
Commit Transaction;
Return @rc;
End try

Begin catch

print 'Номер ошибки: ' + cast(error_number() as varchar(6));
print 'Сообщение: ' + error_message();
print 'Уровень: ' + cast(error_severity() as varchar(6));
print 'Метка: ' + cast(error_state() as varchar(8));
print 'Номер строки: ' + cast(error_line() as varchar(8));
If error_procedure() is not null
print 'Имя процедуры: ' + error_procedure();
If @@TRANCOUNT > 0 
Rollback Transaction;
return -1;

End catch;
go

Declare @rc int;
Exec @rc = PAUDITORIUM_INSERTX @a = '789-1', @n = 'ЛК-СК', @c = 85, @t = '789-1', @tn = 'Лекционная'; 
Print 'Код ошибки' +cast(@rc as varchar(3));
go

Drop Procedure PAUDITORIUM_INSERTX;
