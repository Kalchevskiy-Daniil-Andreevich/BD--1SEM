go
Create Table GROUPS(
IDGR int primary key not null,
FACLT varchar(50) not null,
PROF varchar(50) not null,
YEARP smallint Check (YEARP < YEAR(GETDATE() + 2)) null 
);

go
Insert into GROUPS (IDGR, FACLT, PROF, YEARP)
values (1, '1-40-02-05', 'ИСиТ', 2020)
Insert into GROUPS (IDGR, FACLT, PROF, YEARP)
values (2, '1-45-03-07', 'ИСиТ', 2019)
Insert into GROUPS (IDGR, FACLT, PROF, YEARP)
values (3, '1-47-05-09', 'ПОиТ', 2021)
Insert into GROUPS (IDGR, FACLT, PROF, YEARP)
values (4, '1-45-07-11', 'ПОиТ', 2020)

go
Create Table STUDS(
IDST int primary key identity(1000, 1) not null ,
IDGROUP int foreign key references GROUPS(IDGR) not null,
NAMES varchar(100) not null,
BDAY date null
);

go
INSERT STUDS VALUES
(1,'Сипайло Михаил Андреевич', '2004-05-12'),
(2,	'Зубенко Григорий Русланович', '2004-07-27'),
(3,	'Барковский Виктор Викторович', '2005-09-01'),
(4, 'Белодед Павел Кристианович', '2006-02-15')

