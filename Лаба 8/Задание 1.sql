go
Declare @a char = 'Q',
@b varchar(4) = 'ясад',
@c datetime,
@d time,
@e int, 
@f smallint,
@g tinyint,
@h numeric(12,5);

Set @c = getdate();
Set @d = Getutcdate();
Select @e = Note From PROGRESS
Select @f = Idgroup From GROUPS
Select @g = Note From PROGRESS

Print 'char: '+cast(@a as varchar(10));
Print 'varchar: '+cast(@b as varchar(10));
Print 'tinyint: '+cast(@g as varchar(10));

Select @c c, @d d, @e e, @f f;
