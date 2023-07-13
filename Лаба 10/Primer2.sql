--вывести все кафедры на факультете Тов и удалить кафедры на Т
Declare @pulpit char(20), @allpulpit char(300) = ' ';
Declare zkPulpit Cursor Local Dynamic For
Select PULPIT From PULPIT Where FACULTY = 'ЛХФ';

Open zkPulpit;

Fetch zkPulpit into @pulpit;
print 'Все кафедры на факультете ТОВ'
While @@FETCH_STATUS = 0
Begin

set @allpulpit = rtrim(@pulpit) + ',' +  @allpulpit;
Fetch zkPulpit into @pulpit;

end;
print @allpulpit
close zkPulpit;

