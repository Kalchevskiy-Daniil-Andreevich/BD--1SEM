--SELECT [Номер заказа] FROM ЗАКАЗЫ
--Where [Название детали] Like 'К%' AND [Дата заказа] between '2022-05-28' and '2022-06-29' AND Цена IN(500,900) 

SELECT Цена From ЗАКАЗЫ order by Цена 
DELETE from ДЕТАЛИ Where [Название детали] = 'Колеса';