-- � ---
Set Transaction Isolation Level READ UNCOMMITTED
Begin Transaction

-----------------t1-----------
Select @@SPID, 'Insert ������' '���������', * From ������ Where [�������� ������] = '������� ������';
Select @@SPID, 'Update ������' '���������',  [�������� ������], ���� From ������ Where  [�������� ������] = '�����';
commit;

-----------------t2-----------
-- B ---
Begin Transaction 
Select @@SPID
Insert ������ values(111222, '�������', '�� ����������', 700, 3200, 3);
Update ������ set [�������� ������] = '������' Where [�������� ������] = '������� ������'
rollback;