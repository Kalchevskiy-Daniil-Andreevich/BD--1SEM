Create Table GROUPS(
IDGR int primary key not null,
FACLT varchar(50) not null,
PROF varchar(50) not null,
YEARP smallint default '2001' not null
);

Insert GROUPS values
(1, '����', '1-43-02-1', 2003),
(2, '����', '1-47-05-11', 2002),
(3, '����', '1-49-07-14', 2001),
(4, '����', '1-53-09-17', 2000)

Create Table STUD(
IDST int not null primary key check (IDST > 0),
IDGROUP int foreign key references GROUPS(IDGR) not null,
NAMES varchar(50) not null,
BDAY varchar(50) not null
);

Insert STUD values
(10, 1, '������� ������ ��������', '2004-05-12'),
(20, 2, '����������� ���������', '2005-08-16'),
(30, 3, '���', '2009-05-18'),
(40, 4, '������', '2003-02-22')

Create Table PROGR(
SUBJ varchar(50) not null,
IDST int not null foreign key references STUD(IDST),
PDATE int not null,
NOTE int not null
);

Insert PROGR values
('����������', 20, 2005, 8),
('��', 40, 2004, 4),
('���', 10, 2003, 5),
('�++', 30, 2005, 6)





