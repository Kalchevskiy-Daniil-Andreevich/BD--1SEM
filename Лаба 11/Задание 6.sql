--�---
Set Transaction Isolation Level REPEATABLE READ
Begin Transaction
Select [����� ������] from ������ Where [�������� ������] = '�������';
---------t1----------
---------t2----------
Select case
When [����� ������] = 2 then 'Insert ������' else ' '
end '���������', [����� ������] from ������ Where [�������� ������] = '�������';
commit;

---B-----
Begin Transaction
-----------t1----------
--Insert ������ values(7, 200, '2020-08-05', '�����', 600);
commit;
-----------t2----------