Declare @name char(20), @cost char(40), @amount char(10);
Declare zkOrder Cursor Global Dynamic
for Select [Название детали], Цена, [Количество заказанных деталей]
From ЗАКАЗЫ For Update; --свойство

Open zkOrder;

--Fetch zkOrder into @name, @cost, @amount;
--Delete ЗАКАЗЫ where current of zkOrder;

Fetch zkOrder into @name, @cost, @amount;
Update ЗАКАЗЫ set [Количество заказанных деталей] = [Количество заказанных деталей] + 1 
Where Current of zkOrder;

Close zkOrder;

deallocate zkOrder;