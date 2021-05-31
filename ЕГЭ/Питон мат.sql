IF OBJECT_ID(N'tempdb..#TempEge', N'U') is not null begin
	drop table #TempEge
end
go
with my ([code],[part1],[part2]) 
as
(
  select[Код ОУ],[TestResultB],[TestResultC] from [dbo].[ege2020]
  where [Код предмета] = 18
)
select * into #TempEge
from my
select * from #TempEge

go

alter table #TempEge add [1] float,[2] float,[3]float,[4]float,[5]float,
							[6]float,[7]float,[8]float,[9]float,[10]float,
							[11]float,[12]float,[13]float,[14]float,[15]float,
							[16]float,[17]float,[18]float,[19]float,[20]float,
							[21]float,[22]float,[23]float,[24]float,[25]float,
							[26]float,[27]float,[28]float,[29]float,[30]float,[31]float
go
update #TempEge
set [1] = substring(part1,1,1),[2] = substring(part1,2,1),[3] = substring(part1,3,1),
	[4] = substring(part1,4,1),[5] = substring(part1,5,1),[6] = substring(part1,6,1),
	[7] = substring(part1,7,1),[8] = substring(part2,1,1),[9] = substring(part2,2,1),
	[10] = substring(part2,3,1),[11] = substring(part2,4,1),[12] = substring(part2,5,1),
	[13] = substring(part2,6,1),[14] = substring(part2,7,1),[15] = substring(part1,8,1),
	[16] = substring(part1,9,1),[17] = substring(part1,10,1),

	[18] = substring(part1,11,1),[19] = substring(part1,12,1),[20] = substring(part2,8,1),
	[21] = substring(part2,9,1),[22] = substring(part2,10,1),[23] = substring(part2,11,1),
	[24] = substring(part2,12,1),[25] = substring(part2,13,1),[26] = substring(part2,14,1),
	[27] = substring(part2,15,1),[28] = substring(part2,16,1),[29] = substring(part2,17,1),
	[30] = substring(part2,18,1),[31] = substring(part2,19,1)

go

alter table #TempEge drop column [part1],[part2]
go
select * from #TempEge

select * into testCorrelationLit
from #TempEge