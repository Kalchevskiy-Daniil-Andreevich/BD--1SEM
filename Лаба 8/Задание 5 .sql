Declare @x int =(Select count(*) From ������);
If (Select count(*) From ������) < 20
Begin
Print '���������� ������� ������ 20 ';
Print '���������� = ' +cast(@x as varchar(10));
end;
Begin
Print '���������� ������� ������ 20';
Print '���������� = ' +cast(@x as varchar(10));
end;

--��������������������