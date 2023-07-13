--А---
Set Transaction Isolation Level REPEATABLE READ
Begin Transaction
Select [Номер заказа] from ЗАКАЗЫ Where [Название детали] = 'Каретка';
---------t1----------
---------t2----------
Select case
When [Номер заказа] = 2 then 'Insert Заказы' else ' '
end 'результат', [Номер заказа] from ЗАКАЗЫ Where [Название детали] = 'Каретка';
commit;

---B-----
Begin Transaction
-----------t1----------
--Insert ЗАКАЗЫ values(7, 200, '2020-08-05', 'Ручка', 600);
commit;
-----------t2----------