print 'Число обработанных строк: ' +cast(@@rowcount as varchar(12));
print 'Версия SQL Server: ' +cast(@@version as varchar(100));
print 'Идентификатор процесса: ' +cast(@@spid as varchar(12));
print 'Код последней ошибки: ' +cast(@@error as varchar(10));
print 'Имя сервера: ' +cast(@@servername as varchar(100));
print 'Уровень вложенности транзакции: '+ cast(@@trancount as varchar(20));
print 'Проверка результата считывания строк: '+ cast(@@fetch_status as varchar(20));
print 'Уровень вложенности текущей проце-дуры: '+ cast(@@nestlevel as varchar(20));
--глобальные переменные