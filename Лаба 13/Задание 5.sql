go
Create Function FKOLTOVAR (@p varchar(50)) returns int
As Begin
Declare @rc int = (Select count(*) From ������
Where ���� = isnull(@p, ����));
return @rc;
end;
go

Select ����, dbo.FKOLTOVAR(����) [���������� �������] From ������
Select dbo.FKOLTOVAR(Null)
go

Drop Function FKOLTOVAR;