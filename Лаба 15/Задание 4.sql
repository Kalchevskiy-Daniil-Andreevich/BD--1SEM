INSERT INTO STUDENT (NAME, BDAY, INFO) VALUES
('�������� ��������� ������������', '2004-09-02', 
'<�������>
<������� �����="MP" �����="22223333" ����="12.02.2018" />
<�������>+375445809097</�������>
<�����>
<������>��������</������>
<�����>�����</�����>
<�����>��������</�����>
<���>12</���>
</�����>
</�������>'),
('����� ������ ��������', '2003-12-08', 
'<�������>
<������� �����="MP" �����="1234555" ����="08.03.2017" />
<�������>+375443287643</�������>
<�����>
<������>�������</������>
<�����>����</�����>
<�����>���������</�����>
<���>8</���>
</�����>
</�������>'),
('������� ����� ��������', '2005-07-12', 
'<�������>
<������� �����="MP" �����="55666778" ����="12.12.2018" />
<�������>+375293404567</�������>
<�����>
<������>������</������>
<�����>���������</�����>
<�����>����������</�����>
<���>11</���>
</�����>
</�������>')

UPDATE STUDENT SET INFO = 
'<�������>
<������� �����="MP" �����="55666777" ����="12.12.2018" />
<�������>+375293404567</�������>
<�����>
<������>������</������>
<�����>���������</�����>
<�����>����������</�����>
<���>12</���>
</�����>
</�������>'

SELECT TOP(3) NAME [��� ��������], INFO.value('(/�������/�������/@�����)[1]', 'varchar(10)') as [����� ��������],
INFO.value('(/�������/�������/@�����)[1]', 'varchar(10)') as [����� ��������],
INFO.query('(/�������/�����)') as [�����]
FROM STUDENT
