SELECT * From ПОСТАВЩИКИ;
SELECT [Код Поставщика], Название From ПОСТАВЩИКИ;
SELECT count(*) From ПОСТАВЩИКИ;
SELECT [Название детали] FROM ЗАКАЗЫ
Where Цена < 700
SELECT Distinct Top(4) [Количество заказанных деталей], [Название детали] FROM ЗАКАЗЫ;