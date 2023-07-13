-- А ---
Set Transaction Isolation Level READ UNCOMMITTED
Begin Transaction

-----------------t1-----------
Select @@SPID, 'Insert Детали' 'Результат', * From ДЕТАЛИ Where [Название детали] = 'Ободной тормоз';
Select @@SPID, 'Update Заказы' 'РЕЗУЛЬТАТ',  [Название детали], Цена From ЗАКАЗЫ Where  [Название детали] = 'Спицы';
commit;

-----------------t2-----------
-- B ---
Begin Transaction 
Select @@SPID
Insert ДЕТАЛИ values(111222, 'Каретка', 'от велосипеда', 700, 3200, 3);
Update ЗАКАЗЫ set [Название детали] = 'Тормоз' Where [Название детали] = 'Ободной тормоз'
rollback;