Declare @name char(20), @cost char(40), @amount char(10);
Declare zkOrder Cursor Global Dynamic
for Select [�������� ������], ����, [���������� ���������� �������]
From ������ For Update; --��������

Open zkOrder;

--Fetch zkOrder into @name, @cost, @amount;
--Delete ������ where current of zkOrder;

Fetch zkOrder into @name, @cost, @amount;
Update ������ set [���������� ���������� �������] = [���������� ���������� �������] + 1 
Where Current of zkOrder;

Close zkOrder;

deallocate zkOrder;