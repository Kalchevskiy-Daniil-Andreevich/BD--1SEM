Declare  @nameDetail varchar(50);
Declare zkDetail Cursor Local Static Scroll
for Select [�������� ������] From dbo.������

Open zkDetail;

Fetch First from zkDetail into @nameDetail;
print '������ ������: ' + cast(@nameDetail as varchar(100));

Fetch Next from zkDetail into @nameDetail;
print '��������� ������ �� �������: ' + cast(@nameDetail as varchar(100));

Fetch Prior from zkDetail into @nameDetail;
print '���������� ������ �� �������: ' + cast(@nameDetail as varchar(100));

Fetch Relative 3 from zkDetail into @nameDetail;
print '������ ������ ������ �� �������: ' + cast(@nameDetail as varchar(100));

Fetch Relative -3 from zkDetail into @nameDetail;
print '������ ������ ����� �� �������: ' + cast(@nameDetail as varchar(100));

Fetch Last from zkDetail into @nameDetail;
print '��������� ������: ' + cast(@nameDetail as varchar(100));

Fetch Absolute 2 from zkDetail into @nameDetail;
print '������ ������ �� ������: ' + cast(@nameDetail as varchar(100));

Fetch Absolute -2 from zkDetail into @nameDetail;
print '������ ������� �� �����: ' + cast(@nameDetail as varchar(100));

Close zkDetail;