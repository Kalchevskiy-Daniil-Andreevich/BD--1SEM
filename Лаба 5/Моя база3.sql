Select ����������.�������� As [�����], ������.[�������� ������]
From ����������, ������
Where ����������.[��� ����������] = ������.[��� ����������] And
������.[�������� ������] In(Select [�������� ������] From ������
Where(������.[�������� ������] Like '�������%'))