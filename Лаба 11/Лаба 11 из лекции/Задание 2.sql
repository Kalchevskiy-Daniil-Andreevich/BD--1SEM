--�������� ����������� ����� ����������
Begin Try
Begin Transaction

Delete PROGRESS Where IDSTUDENT = '1030';
Insert PROGRESS values('����', 1031, '2013-10-01', 5);
Insert PROGRESS values('���', 1032, '2015-10-01', 8);

Commit Transaction;

Select * From PROGRESS

End Try

Begin Catch

print '������: ' + case
When error_number() = 2627 and patindex('%PK_PROGRESS%', error_message()) > 0
then '������������ ��������'
else '����������� ������: ' + cast(error_number() as varchar(5)) + error_message()
end;

If @@TRANCOUNT > 0
Rollback Transaction; 

End Catch;