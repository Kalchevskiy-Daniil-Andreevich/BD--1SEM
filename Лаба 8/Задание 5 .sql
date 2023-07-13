Declare @x int =(Select count(*) From ЗАКАЗЫ);
If (Select count(*) From ЗАКАЗЫ) < 20
Begin
Print 'Количество товаров больше 20 ';
Print 'Количество = ' +cast(@x as varchar(10));
end;
Begin
Print 'Количество товаров меньше 20';
Print 'Количество = ' +cast(@x as varchar(10));
end;

--объедоператоригруппы