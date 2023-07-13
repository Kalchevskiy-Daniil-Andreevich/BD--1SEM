use K_MyBase2

CREATE TABLE ПОСТАВЩИКИ
(
[Код поставщика] int primary key not null,
Название nvarchar(20) null,
Адрес nvarchar(20) null,
Телефон nvarchar(20) null,
Артикул int not null
);

Create TABLE ЗАКАЗЫ
(
[Номер заказа] int primary key not null,
[Количество заказанных деталей] int null,
[Дата заказа] date null,
[Название детали] nvarchar(20) null,
Цена int null
);

Create TABLE ДЕТАЛИ
(
Артикул int primary key not null,
[Название детали] nvarchar(20) not null,
Примечание nvarchar(50) null,
[Количество деталей на складе] int null,
[Код поставщика] int foreign key references ПОСТАВЩИКИ([Код поставщика]) null,
[Номер заказа] int foreign key references ЗАКАЗЫ([Номер заказа]) null
);