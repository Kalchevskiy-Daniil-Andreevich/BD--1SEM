print '����� ������������ �����: ' +cast(@@rowcount as varchar(12));
print '������ SQL Server: ' +cast(@@version as varchar(100));
print '������������� ��������: ' +cast(@@spid as varchar(12));
print '��� ��������� ������: ' +cast(@@error as varchar(10));
print '��� �������: ' +cast(@@servername as varchar(100));
print '������� ����������� ����������: '+ cast(@@trancount as varchar(20));
print '�������� ���������� ���������� �����: '+ cast(@@fetch_status as varchar(20));
print '������� ����������� ������� �����-����: '+ cast(@@nestlevel as varchar(20));
--���������� ����������