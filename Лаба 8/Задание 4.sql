go
Declare @t float=2.4, @x float=1.5, @z float;
If (@t > @x) set @z = power(sin(@t),2);
Else if(@t < @x) set @z = 4 * (@t + @x)
Else set @z = 1-exp(@x-2);
Print 'z= ' +cast(@z as varchar(10));

go
Declare @s  varchar(100) = 'Кальчевский Даниил Андреевич' ; 
Select substring(@s, 1, charindex(' ', @s) + 1) + '.'
+substring(@s, charindex(' ', @s, charindex(' ', @s) + 1)+ 1, 1) + '.'

go
Declare @currentDate date = GETDATE();
Declare	@nextmohth int = MONTH(@currentDate) + 1;
Select IDSTUDENT As [Номер студента], BDAY As [День рождения], datediff(year,BDAY,@currentDate) [Возраст] from STUDENT --поиск студентов, у которых день рож-дения в следующем месяце, и определе-ние их возраста
Where MONTH(BDAY) = @nextmohth

go
Select Distinct DATENAME(dw, PDATE) As [День недели] From PROGRESS 
Where SUBJECT = 'СУБД';

--извлекаетподстрокуизуказаннойстрокинаосновеуказанногоместоположения.
--возвращаетпозициюподстрокивнутриуказаннойстроки.