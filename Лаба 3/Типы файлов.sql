use master
create database	K_MYBASE3 on primary
(name = N'K_BD_mdf', filename = N'C:\BD\K_BD_mdf.mdf', size = 10240Kb, maxsize = UNLIMITED, filegrowth = 1024kb),
(name = N'K_BD_ndf', filename = N'C:\BD\K_BD_ndf.ndf', size = 10240Kb, maxsize = 1Gb, filegrowth = 25%),
filegroup FG1
(name = N'K_BD_fg1_1', filename = N'C:\BD\K_BD_fgq-1.ndf', size = 10240Kb, maxsize = 1Gb, filegrowth = 25%),
(name = N'K_BD_fg1_2', filename = N'C:\BD\K_BD_fgq-2.ndf', size = 10240Kb, maxsize = 1Gb, filegrowth = 25%)
log on 
(name = N'K_BD_log', filename = N'C:\BD\K_BD_log.ldf', size = 10240Kb, maxsize = 2048Gb, filegrowth = 10%)