use K_MyBase2

CREATE TABLE ����������
(
[��� ����������] int primary key not null,
�������� nvarchar(20) null,
����� nvarchar(20) null,
������� nvarchar(20) null,
������� int not null
);

Create TABLE ������
(
[����� ������] int primary key not null,
[���������� ���������� �������] int null,
[���� ������] date null,
[�������� ������] nvarchar(20) null,
���� int null
);

Create TABLE ������
(
������� int primary key not null,
[�������� ������] nvarchar(20) not null,
���������� nvarchar(50) null,
[���������� ������� �� ������] int null,
[��� ����������] int foreign key references ����������([��� ����������]) null,
[����� ������] int foreign key references ������([����� ������]) null
);