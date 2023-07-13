Begin Transaction
Insert ЗАКАЗЫ values();
Begin Transaction
Update ЗАКАЗЫ Set [Название детали] = 'Каретка' Where 
commit;