-- � --
Set Transaction Isolation Level READ COMMITTED
Begin Transaction 
Select count (*) From ������ Where [�������� ������] = '������' 
------------t1----------------
------------t2----------------
Select 'Update ������' '���������', count (*)
From ������ Where [�������� ������] = '������'
commit;

---B---
Begin Transaction 
------------t1----------------
Update ������ Set [�������� ������] = '������'
Where [�������� ������] = '���������'
commit;
------------t2----------------