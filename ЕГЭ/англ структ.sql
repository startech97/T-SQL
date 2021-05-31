IF OBJECT_ID(N'tempdb..#TempEge', N'U') is not null begin
	drop table #TempEge
end
go
with my ([code],[part1],[part2],[part3]) 
as
(
  select[Код ОУ],[TestResultB],[TestResultC],[TestResultD] from [dbo].[all_eang]
  where [Код предмета] = 9
)
select * into #TempEge
from my
select * from #TempEge

go

alter table #TempEge add [1] float,[2] float,[3]float,[4]float,[5]float,
							[6]float,[7]float,[8]float,[9]float,[10]float,
							[11]float,[12]float,[13]float,[14]float,[15]float,
							[16]float,[17]float,[18]float,[19]float,[20]float,[21]float,[22]float,
							[23]float,[24]float,[25]float,[26]float,[27]float,[28]float,[29]float,
							[30]float,[31]float,[32]float,[33]float,[34]float,[35]float,[36]float,
							[37]float,[38]float,[39]float,[40]float,[41]float,[42]float,[43]float,
							[44]float,[45]float,[46]float,[47]float,[48]float,[49]float,[50]float,
							[51]float,[52]float,[53]float,[54]float
go
update #TempEge
set [1] = substring(part1,1,1),[2] = substring(part1,2,1),[3] = substring(part1,3,1),
	[4] = substring(part1,4,1),[5] = substring(part1,5,1),[6] = substring(part1,6,1),
	[7] = substring(part1,7,1),[8] = substring(part1,8,1),[9] = substring(part1,9,1),
	[10] = substring(part1,10,1),[11] = substring(part1,11,1),[12] = substring(part1,12,1),
	[13] = substring(part1,13,1),[14] = substring(part1,14,1),[15] = substring(part1,15,1),
	[16] = substring(part1,16,1),[17] = substring(part1,17,1),[18] = substring(part1,18,1),
	[19] = substring(part1,19,1),[20] = substring(part1,20,1),[21] = substring(part1,21,1),
	[22] = substring(part1,22,1),[23] = substring(part1,23,1),[24] = substring(part1,24,1),
	[25] = substring(part1,25,1),[26] = substring(part1,26,1),[27] = substring(part1,27,1),
	[28] = substring(part1,28,1),[29] = substring(part1,29,1),[30] = substring(part1,30,1),
	[31] = substring(part1,31,1),[32] = substring(part1,32,1),[33] = substring(part1,33,1),
	[34] = substring(part1,34,1),[35] = substring(part1,35,1),[36] = substring(part1,36,1),
	[37] = substring(part1,37,1),[38] = substring(part1,38,1),

	[39] = substring(part2,1,1),[40] = substring(part2,2,1),[41] = substring(part2,3,1),
	[42] = substring(part2,4,1),[43] = substring(part2,5,1),[44] = substring(part2,6,1),
	[45] = substring(part2,7,1),[46] = substring(part2,8,1),

	[47] = substring(part3,1,1),[48] = substring(part3,2,1),[49] = substring(part3,3,1),
	[50] = substring(part3,4,1),[51] = substring(part3,5,1),[52] = substring(part3,6,1),
	[53] = substring(part3,7,1),[54] = substring(part3,8,1)


go

alter table #TempEge drop column [part1],[part2],[part3]
go
select * from #TempEge

select * into testCorrelationEng
from #TempEge