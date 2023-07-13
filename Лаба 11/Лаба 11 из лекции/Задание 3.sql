Declare @point varchar(32);
Begin Try

Begin Transaction

Delete PROGRESS Where IDSTUDENT = '1030';
Set @point = 'p1';
Save Transaction @point;

Insert PROGRESS values('����', 1031, '2013-10-01', 5);
Set @point = 'p2';
Save Transaction @point;

Insert PROGRESS values('���', 1032, '2015-10-01', 8);
Set @point = 'p1';
Commit Transaction;

End Try

Begin Catch

print '������: ' + case
When error_number() = 2627 and patindex('%PK_PROGRESS%', error_message()) > 0
then '������������ ��������'
else '����������� ������: ' + cast(error_number() as varchar(5)) + error_message()
End;

If @@TRANCOUNT > 0
Begin

Print '����������� �����' + @point;
Rollback Transaction @point;
Commit Transaction;

End;

End Catch;

Select * From PROGRESS