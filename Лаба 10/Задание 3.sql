Declare @name char(20), @cost char(40), @amount char(10);
Declare zkOrder Cursor Local Dynamic
for Select [�������� ������], ����, [���������� ���������� �������]
From dbo.������;

Open zkOrder;

print '���������� �����: ' + cast(@@Cursor_rows as varchar(5));
Update ������ set [���������� ���������� �������] = 450 Where [�������� ������] = '�����';
Fetch zkOrder into @name, @cost, @amount;
While @@FETCH_STATUS = 0
Begin
print @name + '' + @cost + '' + @amount + '';
fetch zkOrder into @name, @cost, @amount;
End;

Close zkOrder;