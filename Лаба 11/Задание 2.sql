Begin try 
Begin Transaction

Delete ������ Where [�������� ������] = '����';
Insert ������ values(149875, '������', '�� ����������', 713, 2068, 6);
Insert ������ values(199875, '����', '�� ����������', 723, 2098, 7);
Commit Transaction
End try

Begin catch

print '������' + case
when error_number() = 2627 and patindex('%PK_������%', error_message()) > 0
then '������������ ������'
else '����������� ������: ' + cast(error_number() as varchar(5)) + error_message()
end;
if @@TRANCOUNT > 0 

rollback Transaction;
end catch;