use UNIVER
go

Create Procedure PAUDITORIUM_INSERT
@a char(20), @n varchar(50), @c int, @t char(10)
As Begin try

Insert into AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_CAPACITY, AUDITORIUM_TYPE)
values (@a, @n, @c, @t)


end try

Begin catch

print 'Номер ошибки: ' + cast(error_number() as varchar(6));
print 'Сообщение: ' + error_message();
print 'Уровень: ' + cast(error_severity() as varchar(6));
print 'Метка: ' + cast(error_state() as varchar(8));
print 'Номер строки: ' + cast(error_line() as varchar(8));
If error_procedure() is not null
print 'Имя процедуры: ' + error_procedure();
return -1;

end catch; 
go
Declare @rc int;
Exec @rc = PAUDITORIUM_INSERT @a = '459-2', @n = '420-3', @c = 75, @t = 'ЛБ-К';
print 'Код ошибки: ' + cast(@rc as varchar(3));
Select * From AUDITORIUM;
go

Drop Procedure PAUDITORIUM_INSERT;