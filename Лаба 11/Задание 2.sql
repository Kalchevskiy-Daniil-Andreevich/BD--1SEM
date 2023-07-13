Begin try 
Begin Transaction

Delete ДЕТАЛИ Where [Название детали] = 'Рама';
Insert ДЕТАЛИ values(149875, 'Колеса', 'от велосипеда', 713, 2068, 6);
Insert ДЕТАЛИ values(199875, 'Цепь', 'от велосипеда', 723, 2098, 7);
Commit Transaction
End try

Begin catch

print 'ошибка' + case
when error_number() = 2627 and patindex('%PK_ДЕТАЛИ%', error_message()) > 0
then 'дублирование товара'
else 'неизвестная ошибка: ' + cast(error_number() as varchar(5)) + error_message()
end;
if @@TRANCOUNT > 0 

rollback Transaction;
end catch;