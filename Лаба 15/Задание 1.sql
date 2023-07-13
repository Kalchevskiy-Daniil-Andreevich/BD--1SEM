Select TEACHER.TEACHER_NAME As [Teacher_name], TEACHER.PULPIT As [Pulpit]
From TEACHER
Where TEACHER.PULPIT = 'ИСиТ' For xml PATH,
root('Список_преподавателей');