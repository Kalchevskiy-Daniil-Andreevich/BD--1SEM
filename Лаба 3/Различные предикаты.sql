SELECT Distinct [Название детали], [Цена], [Дата заказа] FROM ЗАКАЗЫ Where [Дата заказа] Between '2022-03-28' and '2022-05-28'
SELECT [Название детали] FROM ЗАКАЗЫ Where [Название детали] LIKE 'К%'
SELECT [Название детали] FROM ЗАКАЗЫ Where Цена In(300,752)