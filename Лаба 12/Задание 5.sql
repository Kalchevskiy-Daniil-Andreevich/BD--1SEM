--����������� � ����������� �������� ����� ����� �� ������� ��������� �� ���������� �������.
use UNIVER
go

Create Procedure SUBJECT_REPORT @p char(10)
As
Declare @rc int = 0;
Begin try
Declare @sub char(20), @allsub char(300) = '';
Declare zkSubject Cursor Global Dynamic 
For Select SUBJECT From SUBJECT Where PULPIT = @p;
If not exists (Select SUBJECT From SUBJECT Where PULPIT = @p)
Raiserror('������', 11, 1);
Else
Open zkSubject;
Fetch zkSubject into @sub;
Print '����������';
While @@FETCH_STATUS = 0
Begin

set @allsub = rtrim(@sub) + ',' + @allsub;
set @rc = @rc + 1;
Fetch zkSubject into @sub;

end;
print @allsub;

Close zkSubject;
Return @rc;
end try

Begin catch

print '������ � ����������'
If error_procedure() is not null
print '��� ���������: ' + error_procedure();
return @rc;

End catch;
go

Declare @rc int;
Exec @rc = SUBJECT_REPORT @p = '����';
print '���������� ���������: ' + cast(@rc as varchar(3));
deallocate zkSubject;
go

Drop Procedure SUBJECT_REPORT;