--������� ��� ������� �� ���������� ��� � ������� ������� �� �
Declare @pulpit char(20), @allpulpit char(300) = ' ';
Declare zkPulpit Cursor Local Dynamic For
Select PULPIT From PULPIT Where FACULTY = '���';

Open zkPulpit;

Fetch zkPulpit into @pulpit;
print '��� ������� �� ���������� ���'
While @@FETCH_STATUS = 0
Begin

set @allpulpit = rtrim(@pulpit) + ',' +  @allpulpit;
Fetch zkPulpit into @pulpit;

end;
print @allpulpit
close zkPulpit;

