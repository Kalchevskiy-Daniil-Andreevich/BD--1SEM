Declare @sub char(20), @allsub char(300) = ' ';
Declare zkSubject Cursor 
for Select SUBJECT From SUBJECT Where PULPIT = 'ИСиТ';

Open zkSubject;

Fetch zkSubject into @sub;
print 'Список дисциплин на кафедре ИСиТ';
while @@FETCH_STATUS = 0
begin
set @allsub = rtrim(@sub) + ',' + @allsub;
Fetch zkSubject into @sub;
end;
print @allsub;

Close zkSubject;

deallocate zkSubject;