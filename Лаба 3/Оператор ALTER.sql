ALTER TABLE ПОСТАВЩИКИ ADD [Дата рождения] date;
ALTER TABLE ПОСТАВЩИКИ ADD POL nchar(1) default 'м' check(POL in ('м','ж'));
ALTER TABLE ПОСТАВЩИКИ DROP Column [Дата рождения];
