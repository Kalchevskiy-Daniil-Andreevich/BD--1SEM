Declare @name char(20), @cost char(40), @amount char(10);
Declare zkOrder Cursor Local Dynamic
for Select [Название детали], Цена, [Количество заказанных деталей]
From dbo.ЗАКАЗЫ;

Open zkOrder;

print 'Количество строк: ' + cast(@@Cursor_rows as varchar(5));
Update ЗАКАЗЫ set [Количество заказанных деталей] = 450 Where [Название детали] = 'Спицы';
Fetch zkOrder into @name, @cost, @amount;
While @@FETCH_STATUS = 0
Begin
print @name + '' + @cost + '' + @amount + '';
fetch zkOrder into @name, @cost, @amount;
End;

Close zkOrder;