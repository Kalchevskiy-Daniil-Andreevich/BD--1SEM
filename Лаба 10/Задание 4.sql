Declare  @nameDetail varchar(50);
Declare zkDetail Cursor Local Static Scroll
for Select [Название детали] From dbo.ДЕТАЛИ

Open zkDetail;

Fetch First from zkDetail into @nameDetail;
print 'Первая строка: ' + cast(@nameDetail as varchar(100));

Fetch Next from zkDetail into @nameDetail;
print 'Следующая строка за текущей: ' + cast(@nameDetail as varchar(100));

Fetch Prior from zkDetail into @nameDetail;
print 'Предыдущая строка за текущей: ' + cast(@nameDetail as varchar(100));

Fetch Relative 3 from zkDetail into @nameDetail;
print 'Третья строка вперед от текущей: ' + cast(@nameDetail as varchar(100));

Fetch Relative -3 from zkDetail into @nameDetail;
print 'Третья строка назад от текущей: ' + cast(@nameDetail as varchar(100));

Fetch Last from zkDetail into @nameDetail;
print 'Последняя строка: ' + cast(@nameDetail as varchar(100));

Fetch Absolute 2 from zkDetail into @nameDetail;
print 'Вторая строка от начала: ' + cast(@nameDetail as varchar(100));

Fetch Absolute -2 from zkDetail into @nameDetail;
print 'Вторая сторока от конца: ' + cast(@nameDetail as varchar(100));

Close zkDetail;