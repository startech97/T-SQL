IF OBJECT_ID(N'tempdb..#TempSch', N'U') is not null begin
	drop table #TempSch
end
go
select * into #TempSch
from [dbo].['2019']
where code_ou = 760101
go

update #TempSch
set code_ou = 111111
update #TempSch
set name_ou = 'Школа'
update #TempSch
set district = 'Муниципальный район'
go
select * from #TempSch
insert into [dbo].['2019']
select * from #TempSch

