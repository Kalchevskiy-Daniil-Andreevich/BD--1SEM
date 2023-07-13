-- А --
Set Transaction Isolation Level READ COMMITTED
Begin Transaction 
Select count (*) From ЗАКАЗЫ Where [Название детали] = 'Педали' 
------------t1----------------
------------t2----------------
Select 'Update Заказы' 'результат', count (*)
From ЗАКАЗЫ Where [Название детали] = 'Педали'
commit;

---B---
Begin Transaction 
------------t1----------------
Update ЗАКАЗЫ Set [Название детали] = 'Педали'
Where [Название детали] = 'Сцепление'
commit;
------------t2----------------