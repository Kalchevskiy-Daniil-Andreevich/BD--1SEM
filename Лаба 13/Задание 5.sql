go
Create Function FKOLTOVAR (@p varchar(50)) returns int
As Begin
Declare @rc int = (Select count(*) From ЗАКАЗЫ
Where Цена = isnull(@p, Цена));
return @rc;
end;
go

Select Цена, dbo.FKOLTOVAR(Цена) [Количество заказов] From ЗАКАЗЫ
Select dbo.FKOLTOVAR(Null)
go

Drop Function FKOLTOVAR;