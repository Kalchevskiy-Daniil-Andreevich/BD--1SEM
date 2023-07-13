Declare @name char(30), @note int
Declare zkNote Cursor Global Dynamic
For Select STUDENT.NAME, PROGRESS.NOTE
From STUDENT Inner Join PROGRESS
On PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT Inner Join GROUPS
On STUDENT.IDGROUP = GROUPS.IDGROUP
Where PROGRESS.NOTE < 7 

Open zkNote;

Fetch zkNote into @name, @note;
Delete PROGRESS WHERE NOTE < 7;
While @@FETCH_STATUS = 0

Begin
print @name + ' '  + cast(@note as varchar(10))
Fetch zkNote into @name, @note
end;

Close zkNote;
deallocate zkNote;
go

Declare @id int, @name char(30), @note int ;
Declare zkNotes Cursor Global Dynamic
for
Select STUDENT.IDSTUDENT, STUDENT.NAME, PROGRESS.NOTE from PROGRESS join STUDENT 
On STUDENT.IDSTUDENT = PROGRESS.IDSTUDENT Where STUDENT.IDSTUDENT = 1014

Open zkNotes;

Fetch zkNotes into @id, @name, @note;
Update PROGRESS set NOTE = NOTE + 1 where current of zkNotes
print cast(@id as varchar(4)) + ' ' + @name + ' '+ cast(@note as varchar(2))

Close zkNotes;
deallocate zkNotes;

