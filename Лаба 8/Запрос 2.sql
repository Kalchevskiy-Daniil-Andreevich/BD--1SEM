--найдем колво кафдр на фак xtit если оно меньше 5 то выв их а если больше то написать сколько их
Declare @countOfPulpit int = (
Select count(*) From PULPIT
Where FACULTY = 'ЛХФ'
)

If @countOfPulpit < 5
print @countOfPulpit
else if @countOfPulpit > 5
print 'их 6'

--область видимости переменных и datediff
