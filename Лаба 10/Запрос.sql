--вывести всех преподавателей из кафедры исит через запятую

Declare @ch char(20), @allteacher char(300) = ' ';
Declare zkTeacher Cursor Global Dynamic
For Select TEACHER_NAME From TEACHER Where PULPIT = 'ИСиТ';

Open zkTeacher;

Fetch zkTeacher into @ch;
--Delete From TEACHER Where TEACHER_NAME Like 'М%';
print 'Все преподаватели из кафедры ИСИТ:'
While @@FETCH_STATUS = 0
Begin

set @allteacher = rtrim(@ch) + ',' + @allteacher;
Fetch zkTeacher into @ch;

end;
print @allteacher;

Close zkTeacher;
deallocate zkTeacher;

--current of ?