create table #Car
(
	hert int,
	tires int
);

Set nocount on;
Declare @i int =0;
while @i < 10
	begin
	insert #Car(hert, tires)
		values(1500*Rand(),15000*(Rand()))
	Set @i= @i+1;
	end;

select * from #Car
drop table #Car
