Declare @order char(20), @cost real;
Declare zkOrd Cursor Local 
for Select [�������� ������], ���� From ������;

Open zkOrd;
FETCH zkOrd into @order, @cost;
print '1. ' + @order + cast(@cost as varchar(10));
go

Declare @order char(20), @cost real;
FETCH zkOrd into @order, @cost;
print '2. ' + @order + cast(@cost as varchar(10));
close zkOrd
go







Declare @order char(20), @cost real;
Declare zkOrd Cursor Global 
for Select [�������� ������], ���� From ������;

Open zkOrd;
FETCH zkOrd into @order, @cost;
print '1. ' + @order + cast(@cost as varchar(10));
go

Declare @order char(20), @cost real;
FETCH zkOrd into @order, @cost;
print '2. ' + @order + cast(@cost as varchar(10));
close zkOrd;
deallocate zkOrd;
go