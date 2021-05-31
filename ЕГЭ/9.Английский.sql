BEGIN TRANSACTION;   
   

IF OBJECT_ID(N'tempdb..#TempEge', N'U') is not null begin
	drop table #TempEge
end
go
with MyTable( [code_sub],[name_sub], [year], [code_ou], 
			  [name_ou],[type_ou],[district],[cluster],[part1],[part2])-----
as
	(select   [Код предмета],'Английский язык',Year([Дата экзамена]),[Код ОУ], 
			  [Наименование ОУ],[Тип ОУ],[Муниципальный район],[Кластер],[TestResultB],[TestResultC]+[TestResultD]--

	from   [dbo].[Sheet1$]
	where  [Код предмета] = 9
	)

select * into #TempEge
from MyTable
select * from #TempEge
go

alter table #TempEge add [1] float,[2] float,[3]float,[4]float,[5]float,
							[6]float,[7]float,[8]float,[9]float,[10]float,
							[11]float,[12]float,[13]float,[14]float,[15]float,
							[16]float,[17]float,[18]float,[19]float,[20]float,
							[21]float,[22]float,[23]float,[24]float,[25]float,
							[26]float,[27]float,[28]float,[29]float,
							[30]float,[31]float,[32]float,[33]float,[34]float,
							[35]float,[36]float,[37]float,[38]float,
							
							[s1] float,[s2] float,[s3]float,[s4]float,[s5]float,
							[s6]float,[s7]float,[s8]float,[s9]float,[s10]float,
							[s11]float,[s12]float,[s13]float,[s14]float,[s15]float,
							[s16]float
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
	[28] = substring(part1,28,1),[29] = substring(part1,29,1),
	[30] = substring(part1,30,1),[31] = substring(part1,31,1),[32] = substring(part1,32,1),
	[33] = substring(part1,33,1),[34] = substring(part1,34,1),[35] = substring(part1,35,1),
	[36] = substring(part1,36,1),[37] = substring(part1,37,1),[38] = substring(part1,38,1),

	[s1] = substring(part2,1,1),[s2] = substring(part2,2,1),[s3] = substring(part2,3,1),
	[s4] = substring(part2,4,1),[s5] = substring(part2,5,1),[s6] = substring(part2,6,1),
	[s7] = substring(part2,7,1),[s8] = substring(part2,8,1),[s9] = substring(part2,9,1),
	[s10] = substring(part2,10,1),[s11] = substring(part2,11,1),[s12] = substring(part2,12,1),
	[s13] = substring(part2,13,1),[s14] = substring(part2,14,1),[s15] = substring(part2,15,1),
	[s16] = substring(part2,16,1)

go
alter table #TempEge drop column [part1],[part2]-------

update #TempEge
set [cluster] = 0
where [cluster] is null
go
IF OBJECT_ID(N'tempdb..#TempCluster', N'U') is not null begin
	drop table #TempCluster
end;

with ClusterGroup ([cluster2],[c1],[c2],[c3],[c4],[c5],[c6],[c7],[c8],[c9],[c10],[c11],[c12],[c13],[c14],[c15],[c16]
,[c17],[c18],[c19],[c20],[c21],[c22],[c23],[c24],[c25],[c26],[c27],[c28],[c29],[c30],[c31],[c32],[c33],[c34],[c35],[c36],[c37],[c38],[sc1],[sc2],[sc3],[sc4],[sc5],[sc6],[sc7],[sc8],[sc9],[sc10],[sc11],[sc12],[sc13],[sc14],[sc15],[sc16]) 
as (select [cluster]
	,round((sum([1])/Count([1]))/6*100, 1,1) as [1]
	  , round((sum([2])/Count([2]))/7*100, 1,1) as [2]
	  , round((sum([3])/Count([3]))/1*100, 1,1) as [3]
	  , round((sum([4])/Count([4]))/1*100, 1,1) as [4]
	  , round((sum([5])/Count([5]))/1*100, 1,1) as [5]
	  , round((sum([6])/Count([6]))/1*100, 1,1) as [6]
	  , round((sum([7])/Count([7]))/1*100, 1,1) as [7]
	  , round((sum([8])/Count([8]))/1*100, 1,1) as [8]
	  , round((sum([9])/Count([9]))/1*100, 1,1) as [9]
	  , round((sum([10])/Count([10]))/7*100, 1,1) as [10]
	  , round((sum([11])/Count([11]))/6*100, 1,1) as [11]
	  , round((sum([12])/Count([12]))/1*100, 1,1) as [12]
	  , round((sum([13])/Count([13]))/1*100, 1,1) as [13]
	  , round((sum([14])/Count([14]))/1*100, 1,1) as [14]
	  , round((sum([15])/Count([15]))/1*100, 1,1) as [15]
	  , round((sum([16])/Count([16]))/1*100, 1,1) as [16]
	  , round((sum([17])/Count([17]))/1*100, 1,1) as [17]
	  , round((sum([18])/Count([18]))/1*100, 1,1) as [18]
	  , round((sum([19])/Count([19]))/1*100, 1,1) as [19]
	  , round((sum([20])/Count([20]))/1*100, 1,1) as [20]
	  , round((sum([21])/Count([21]))/1*100, 1,1) as [21]
	  , round((sum([22])/Count([22]))/1*100, 1,1) as [22]
	  , round((sum([23])/Count([23]))/1*100, 1,1) as [23]
	  , round((sum([24])/Count([24]))/1*100, 1,1) as [24]
	  , round((sum([25])/Count([25]))/1*100, 1,1) as [25]
	  , round((sum([26])/Count([26]))/1*100, 1,1) as [26]
	  , round((sum([27])/Count([27]))/1*100, 1,1) as [27]
	  , round((sum([28])/Count([28]))/1*100, 1,1) as [28]
	  , round((sum([29])/Count([29]))/1*100, 1,1) as [29]
	  , round((sum([30])/Count([30]))/1*100, 1,1) as [30]
	  , round((sum([31])/Count([31]))/1*100, 1,1) as [31]
	  , round((sum([32])/Count([32]))/1*100, 1,1) as [32]
	  , round((sum([33])/Count([33]))/1*100, 1,1) as [33]
	  , round((sum([34])/Count([34]))/1*100, 1,1) as [34]
	  , round((sum([35])/Count([35]))/1*100, 1,1) as [35]
	  , round((sum([36])/Count([36]))/1*100, 1,1) as [36]
	  , round((sum([37])/Count([37]))/1*100, 1,1) as [37]
	  , round((sum([38])/Count([38]))/1*100, 1,1) as [38]

	  ,round((sum([s1])/Count([s1]))/2*100, 1,1) as [s1]
	  , round((sum([s2])/Count([s2]))/2*100, 1,1) as [s2]
	  , round((sum([s3])/Count([s3]))/2*100, 1,1) as [s3]
	  , round((sum([s4])/Count([s4]))/3*100, 1,1) as [s4]
	  , round((sum([s5])/Count([s5]))/3*100, 1,1) as [s5]
	  , round((sum([s6])/Count([s6]))/3*100, 1,1) as [s6]
	  , round((sum([s7])/Count([s7]))/3*100, 1,1) as [s7]
	  , round((sum([s8])/Count([s8]))/2*100, 1,1) as [s8]
	  , round((sum([s9])/Count([s9]))/1*100, 1,1) as [s9]
	  , round((sum([s10])/Count([s10]))/5*100, 1,1) as [s10]
	  , round((sum([s11])/Count([s11]))/3*100, 1,1) as [s11]
	  , round((sum([s12])/Count([s12]))/2*100, 1,1) as [s12]
	  , round((sum([s13])/Count([s13]))/2*100, 1,1) as [s13]
	  , round((sum([s14])/Count([s14]))/3*100, 1,1) as [s14]
	  , round((sum([s15])/Count([s15]))/2*100, 1,1) as [s15]
	  , round((sum([s16])/Count([s16]))/2*100, 1,1) as [s16]
	from #TempEge
	group by [cluster]
	)
select * into #TempCluster 
from ClusterGroup
select * from #TempCluster
-------------------
update #TempCluster
set [cluster2] = '0'
where [cluster2] is null

go
	IF OBJECT_ID(N'tempdb..#TempRegion', N'U') is not null begin
	drop table #TempRegion
end;
-------------
with RegionGroup ([r1],[r2],[r3],[r4],[r5],[r6],[r7],[r8],[r9],[r10],[r11],[r12],[r13],[r14],[r15],[r16]
,[r17],[r18],[r19],[r20],[r21],[r22],[r23],[r24],[r25],[r26],[r27],[r28],[r29],[r30],[r31],[r32],[r33],[r34],[r35],[r36],[r37],[r38],[sr1],[sr2],[sr3],[sr4],[sr5],[sr6],[sr7],[sr8],[sr9],[sr10],[sr11],[sr12],[sr13],[sr14],[sr15],[sr16]) 
as (select
		round((sum([1])/Count([1]))/6*100, 1,1) as [1]
	  , round((sum([2])/Count([2]))/7*100, 1,1) as [2]
	  , round((sum([3])/Count([3]))/1*100, 1,1) as [3]
	  , round((sum([4])/Count([4]))/1*100, 1,1) as [4]
	  , round((sum([5])/Count([5]))/1*100, 1,1) as [5]
	  , round((sum([6])/Count([6]))/1*100, 1,1) as [6]
	  , round((sum([7])/Count([7]))/1*100, 1,1) as [7]
	  , round((sum([8])/Count([8]))/1*100, 1,1) as [8]
	  , round((sum([9])/Count([9]))/1*100, 1,1) as [9]
	  , round((sum([10])/Count([10]))/7*100, 1,1) as [10]
	  , round((sum([11])/Count([11]))/6*100, 1,1) as [11]
	  , round((sum([12])/Count([12]))/1*100, 1,1) as [12]
	  , round((sum([13])/Count([13]))/1*100, 1,1) as [13]
	  , round((sum([14])/Count([14]))/1*100, 1,1) as [14]
	  , round((sum([15])/Count([15]))/1*100, 1,1) as [15]
	  , round((sum([16])/Count([16]))/1*100, 1,1) as [16]
	  , round((sum([17])/Count([17]))/1*100, 1,1) as [17]
	  , round((sum([18])/Count([18]))/1*100, 1,1) as [18]
	  , round((sum([19])/Count([19]))/1*100, 1,1) as [19]
	  , round((sum([20])/Count([20]))/1*100, 1,1) as [20]
	  , round((sum([21])/Count([21]))/1*100, 1,1) as [21]
	  , round((sum([22])/Count([22]))/1*100, 1,1) as [22]
	  , round((sum([23])/Count([23]))/1*100, 1,1) as [23]
	  , round((sum([24])/Count([24]))/1*100, 1,1) as [24]
	  , round((sum([25])/Count([25]))/1*100, 1,1) as [25]
	  , round((sum([26])/Count([26]))/1*100, 1,1) as [26]
	  , round((sum([27])/Count([27]))/1*100, 1,1) as [27]
	  , round((sum([28])/Count([28]))/1*100, 1,1) as [28]
	  , round((sum([29])/Count([29]))/1*100, 1,1) as [29]
	  , round((sum([30])/Count([30]))/1*100, 1,1) as [30]
	  , round((sum([31])/Count([31]))/1*100, 1,1) as [31]
	  , round((sum([32])/Count([32]))/1*100, 1,1) as [32]
	  , round((sum([33])/Count([33]))/1*100, 1,1) as [33]
	  , round((sum([34])/Count([34]))/1*100, 1,1) as [34]
	  , round((sum([35])/Count([35]))/1*100, 1,1) as [35]
	  , round((sum([36])/Count([36]))/1*100, 1,1) as [36]
	  , round((sum([37])/Count([37]))/1*100, 1,1) as [37]
	  , round((sum([38])/Count([38]))/1*100, 1,1) as [38]

	  ,round((sum([s1])/Count([s1]))/2*100, 1,1) as [s1]
	  , round((sum([s2])/Count([s2]))/2*100, 1,1) as [s2]
	  , round((sum([s3])/Count([s3]))/2*100, 1,1) as [s3]
	  , round((sum([s4])/Count([s4]))/3*100, 1,1) as [s4]
	  , round((sum([s5])/Count([s5]))/3*100, 1,1) as [s5]
	  , round((sum([s6])/Count([s6]))/3*100, 1,1) as [s6]
	  , round((sum([s7])/Count([s7]))/3*100, 1,1) as [s7]
	  , round((sum([s8])/Count([s8]))/2*100, 1,1) as [s8]

	  , round((sum([s9])/Count([s9]))/1*100, 1,1) as [s9]
	  , round((sum([s10])/Count([s10]))/5*100, 1,1) as [s10]
	  , round((sum([s11])/Count([s11]))/3*100, 1,1) as [s11]
	  , round((sum([s12])/Count([s12]))/2*100, 1,1) as [s12]
	  , round((sum([s13])/Count([s13]))/2*100, 1,1) as [s13]
	  , round((sum([s14])/Count([s14]))/3*100, 1,1) as [s14]
	  , round((sum([s15])/Count([s15]))/2*100, 1,1) as [s15]
	  , round((sum([s16])/Count([s16]))/2*100, 1,1) as [s16]
	from #TempEge
	)
	
select * into #TempRegion 
from RegionGroup
go
IF OBJECT_ID(N'tempdb..#TempSchool', N'U') is not null begin
	drop table #TempSchool
end;
---------------------------------------
select * into #TempSchool
from(
select [code_sub],[name_sub], [year], [code_ou], 
		[name_ou],[type_ou],[district],[cluster]
		, round((sum([1])/Count([1]))/6*100, 1,1) as [s1]
	  , round((sum([2])/Count([2]))/7*100, 1,1) as [s2]
	  , round((sum([3])/Count([3]))/1*100, 1,1) as [s3]
	  , round((sum([4])/Count([4]))/1*100, 1,1) as [s4]
	  , round((sum([5])/Count([5]))/1*100, 1,1) as [s5]
	  , round((sum([6])/Count([6]))/1*100, 1,1) as [s6]
	  , round((sum([7])/Count([7]))/1*100, 1,1) as [s7]
	  , round((sum([8])/Count([8]))/1*100, 1,1) as [s8]
	  , round((sum([9])/Count([9]))/1*100, 1,1) as [s9]
	  , round((sum([10])/Count([10]))/7*100, 1,1) as [s10]
	  , round((sum([11])/Count([11]))/6*100, 1,1) as [s11]
	  , round((sum([12])/Count([12]))/1*100, 1,1) as [s12]
	  , round((sum([13])/Count([13]))/1*100, 1,1) as [s13]
	  , round((sum([14])/Count([14]))/1*100, 1,1) as [s14]
	  , round((sum([15])/Count([15]))/1*100, 1,1) as [s15]
	  , round((sum([16])/Count([16]))/1*100, 1,1) as [s16]
	  , round((sum([17])/Count([17]))/1*100, 1,1) as [s17]
	  , round((sum([18])/Count([18]))/1*100, 1,1) as [s18]
	  , round((sum([19])/Count([19]))/1*100, 1,1) as [s19]
	  , round((sum([20])/Count([20]))/1*100, 1,1) as [s20]
	  , round((sum([21])/Count([21]))/1*100, 1,1) as [s21]
	  , round((sum([22])/Count([22]))/1*100, 1,1) as [s22]
	  , round((sum([23])/Count([23]))/1*100, 1,1) as [s23]
	  , round((sum([24])/Count([24]))/1*100, 1,1) as [s24]
	  , round((sum([25])/Count([25]))/1*100, 1,1) as [s25]
	  , round((sum([26])/Count([26]))/1*100, 1,1) as [s26]
	  , round((sum([27])/Count([27]))/1*100, 1,1) as [s27]
	  , round((sum([28])/Count([28]))/1*100, 1,1) as [s28]
	  , round((sum([29])/Count([29]))/1*100, 1,1) as [s29]
	  , round((sum([30])/Count([30]))/1*100, 1,1) as [s30]
	  , round((sum([31])/Count([31]))/1*100, 1,1) as [s31]
	  , round((sum([32])/Count([32]))/1*100, 1,1) as [s32]
	  , round((sum([33])/Count([33]))/1*100, 1,1) as [s33]
	  , round((sum([34])/Count([34]))/1*100, 1,1) as [s34]
	  , round((sum([35])/Count([35]))/1*100, 1,1) as [s35]
	  , round((sum([36])/Count([36]))/1*100, 1,1) as [s36]
	  , round((sum([37])/Count([37]))/1*100, 1,1) as [s37]
	  , round((sum([38])/Count([38]))/1*100, 1,1) as [s38]

	  , round((sum([s1])/Count([s1]))/2*100, 1,1) as [ss1]
	  , round((sum([s2])/Count([s2]))/2*100, 1,1) as [ss2]
	  , round((sum([s3])/Count([s3]))/2*100, 1,1) as [ss3]
	  , round((sum([s4])/Count([s4]))/3*100, 1,1) as [ss4]
	  , round((sum([s5])/Count([s5]))/3*100, 1,1) as [ss5]
	  , round((sum([s6])/Count([s6]))/3*100, 1,1) as [ss6]
	  , round((sum([s7])/Count([s7]))/3*100, 1,1) as [ss7]
	  , round((sum([s8])/Count([s8]))/2*100, 1,1) as [ss8]

	  , round((sum([s9])/Count([s9]))/1*100, 1,1) as [ss9]
	  , round((sum([s10])/Count([s10]))/5*100, 1,1) as [ss10]
	  , round((sum([s11])/Count([s11]))/3*100, 1,1) as [ss11]
	  , round((sum([s12])/Count([s12]))/2*100, 1,1) as [ss12]
	  , round((sum([s13])/Count([s13]))/2*100, 1,1) as [ss13]
	  , round((sum([s14])/Count([s14]))/3*100, 1,1) as [ss14]
	  , round((sum([s15])/Count([s15]))/2*100, 1,1) as [ss15]
	  , round((sum([s16])/Count([s16]))/2*100, 1,1) as [ss16]

from #TempEge
group by [code_sub],[name_sub], [year], [code_ou], 
			  [name_ou],[type_ou],[district],[cluster]
) as qwer

go
IF OBJECT_ID(N'tempdb..#Full', N'U') is not null begin
	drop table #Full
end;
select * into #Full
from #TempSchool s join #TempCluster c
on s.[cluster] = c.[cluster2]
cross join #TempRegion

go
IF OBJECT_ID(N'tempdb..#Sepjson', N'U') is not null begin
	drop table #Sepjson
end;
----------------------------------
select * into #Sepjson
from(
select [code_sub],[name_sub], [year], [code_ou], 
		[name_ou],[type_ou],[district],[cluster]
		,(select 'Аудирование 1. Понимание основного содержания прослушанного текста' as specific, CONVERT(NUMERIC(5,1), ROUND([s1], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c1], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r1], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [1]
		,(select 'Аудирование 2. Понимание в прослушанном тексте запрашиваемой информации'as specific,CONVERT(NUMERIC(5,1), ROUND([s2], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c2], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r2], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [2]
		,(select 'Аудирование 3. Полное понимание прослушанного текста'as specific,CONVERT(NUMERIC(5,1), ROUND([s3], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c3], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r3], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [3]
		,(select 'Аудирование 4. Полное понимание прослушанного текста'as specific,CONVERT(NUMERIC(5,1), ROUND([s4], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c4], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r4], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [4]
		,(select 'Аудирование 5. Полное понимание прослушанного текста'as specific,CONVERT(NUMERIC(5,1), ROUND([s5], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c5], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r5], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [5]
		,(select 'Аудирование 6. Полное понимание прослушанного текста'as specific,CONVERT(NUMERIC(5,1), ROUND([s6], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c6], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r6], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [6]
		,(select 'Аудирование 7. Полное понимание прослушанного текста'as specific,CONVERT(NUMERIC(5,1), ROUND([s7], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c7], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r7], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [7]
		,(select 'Аудирование 8. Полное понимание прослушанного текста'as specific,CONVERT(NUMERIC(5,1), ROUND([s8], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c8], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r8], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [8]
		,(select 'Аудирование 9. Полное понимание прослушанного текста'as specific,CONVERT(NUMERIC(5,1), ROUND([s9], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c9], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r9], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [9]
		,(select 'Чтение 10. Понимание основного содержания текста'as specific,CONVERT(NUMERIC(5,1), ROUND([s10], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c10], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r10], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [10]
		,(select 'Чтение 11. Понимание структурно-смысловых связей в тексте'as specific,CONVERT(NUMERIC(5,1), ROUND([s11], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c11], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r11], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [11]
		,(select 'Чтение 12. Полное понимание информации в тексте'as specific,CONVERT(NUMERIC(5,1), ROUND([s12], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c12], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r12], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [12]
		,(select 'Чтение 13. Полное понимание информации в тексте'as specific,CONVERT(NUMERIC(5,1), ROUND([s13], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c13], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r13], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [13]
		,(select 'Чтение 14. Полное понимание информации в тексте'as specific,CONVERT(NUMERIC(5,1), ROUND([s14], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c14], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r14], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [14]
		,(select 'Чтение 15. Полное понимание информации в тексте'as specific,CONVERT(NUMERIC(5,1), ROUND([s15], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c15], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r15], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [15]
		,(select 'Чтение 16. Полное понимание информации в тексте'as specific,CONVERT(NUMERIC(5,1), ROUND([s16], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c16], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r16], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [16]
		,(select 'Чтение 17. Полное понимание информации в тексте'as specific,CONVERT(NUMERIC(5,1), ROUND([s17], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c17], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r17], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [17]
		,(select 'Чтение 18. Полное понимание информации в тексте'as specific,CONVERT(NUMERIC(5,1), ROUND([s18], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c18], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r18], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [18]
		,(select 'Грамматика и лексика 19. Грамматические навыки'as specific,CONVERT(NUMERIC(5,1), ROUND([s19], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c19], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r19], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [19]
		,(select 'Грамматика и лексика 20. Грамматические навыки'as specific,CONVERT(NUMERIC(5,1), ROUND([s20], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c20], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r20], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [20]
		,(select 'Грамматика и лексика 21. Грамматические навыки'as specific,CONVERT(NUMERIC(5,1), ROUND([s21], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c21], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r21], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [21]
		,(select 'Грамматика и лексика 22. Грамматические навыки'as specific,CONVERT(NUMERIC(5,1), ROUND([s22], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c22], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r22], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [22]
		,(select 'Грамматика и лексика 23. Грамматические навыки'as specific,CONVERT(NUMERIC(5,1), ROUND([s23], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c23], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r23], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [23]
		,(select 'Грамматика и лексика 24. Грамматические навыки'as specific,CONVERT(NUMERIC(5,1), ROUND([s24], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c24], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r24], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [24]
		,(select 'Грамматика и лексика 25. Грамматические навыки'as specific,CONVERT(NUMERIC(5,1), ROUND([s25], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c25], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r25], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [25]
		,(select 'Грамматика и лексика 26. Лексико-грамматические навыки'as specific,CONVERT(NUMERIC(5,1), ROUND([s26], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c26], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r26], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [26]
		,(select 'Грамматика и лексика 27. Лексико-грамматические навыки'as specific,CONVERT(NUMERIC(5,1), ROUND([s27], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c27], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r27], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [27]
		,(select 'Грамматика и лексика 28. Лексико-грамматические навыки'as specific,CONVERT(NUMERIC(5,1), ROUND([s28], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c28], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r28], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [28]
		,(select 'Грамматика и лексика 29. Лексико-грамматические навыки'as specific,CONVERT(NUMERIC(5,1), ROUND([s29], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c29], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r29], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [29]
		,(select 'Грамматика и лексика 30. Лексико-грамматические навыки'as specific,CONVERT(NUMERIC(5,1), ROUND([s30], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c30], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r30], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [30]
		,(select 'Грамматика и лексика 31. Лексико-грамматические навыки'as specific,CONVERT(NUMERIC(5,1), ROUND([s31], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c31], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r31], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [31]
		,(select 'Грамматика и лексика 32. Лексико-грамматические навыки'as specific,CONVERT(NUMERIC(5,1), ROUND([s32], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c32], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r32], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [32]
		,(select 'Грамматика и лексика 33. Лексико-грамматические навыки'as specific,CONVERT(NUMERIC(5,1), ROUND([s33], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c33], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r33], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [33]
		,(select 'Грамматика и лексика 34. Лексико-грамматические навыки'as specific,CONVERT(NUMERIC(5,1), ROUND([s34], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c34], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r34], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [34]
		,(select 'Грамматика и лексика 35. Лексико-грамматические навыки'as specific,CONVERT(NUMERIC(5,1), ROUND([s35], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c35], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r35], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [35]
		,(select 'Грамматика и лексика 36. Лексико-грамматические навыки'as specific,CONVERT(NUMERIC(5,1), ROUND([s36], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c36], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r36], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [36]
		,(select 'Грамматика и лексика 37. Лексико-грамматические навыки'as specific,CONVERT(NUMERIC(5,1), ROUND([s37], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c37], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r37], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [37]
		,(select 'Грамматика и лексика 38. Лексико-грамматические навыки'as specific,CONVERT(NUMERIC(5,1), ROUND([s38], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c38], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r38], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [38]
		
		,(select 'Письмо 39.1. Письмо личного характера. Решение коммуникативной задачи' as specific, CONVERT(NUMERIC(5,1), ROUND([ss1], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc1], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr1], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s1]
		,(select 'Письмо 39.2. Письмо личного характера. Организация текста'as specific,CONVERT(NUMERIC(5,1), ROUND([ss2], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc2], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr2], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s2]
		,(select 'Письмо 39.3. Письмо личного характера. Языковое оформление текста'as specific,CONVERT(NUMERIC(5,1), ROUND([ss3], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc3], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr3], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s3]
		,(select 'Письмо 40.1. Письменное высказывание с элементами рассуждения по предложенной проблеме «Ваше мнение». Решение коммуникативной задачи'as specific,CONVERT(NUMERIC(5,1), ROUND([ss4], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc4], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr4], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s4]
		,(select 'Письмо 40.2. Письменное высказывание с элементами рассуждения по предложенной проблеме «Ваше мнение». Организация текста'as specific,CONVERT(NUMERIC(5,1), ROUND([ss5], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc5], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr5], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s5]
		,(select 'Письмо 40.3. Письменное высказывание с элементами рассуждения по предложенной проблеме «Ваше мнение». Лексика'as specific,CONVERT(NUMERIC(5,1), ROUND([ss6], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc6], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr6], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s6]
		,(select 'Письмо 40.4. Письменное высказывание с элементами рассуждения по предложенной проблеме «Ваше мнение». Грамматика'as specific,CONVERT(NUMERIC(5,1), ROUND([ss7], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc7], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr7], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s7]
		,(select 'Письмо 40.5. Письменное высказывание с элементами рассуждения по предложенной проблеме «Ваше мнение». Орфография и пунктуация'as specific,CONVERT(NUMERIC(5,1), ROUND([ss8], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc8], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr8], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s8]
		,(select 'Говорение 41. Чтение текста вслух'as specific,CONVERT(NUMERIC(5,1), ROUND([ss9], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc9], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr9], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s9]
		,(select 'Говорение 42. Условный диалог-расспрос'as specific,CONVERT(NUMERIC(5,1), ROUND([ss10], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc10], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr10], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s10]
		,(select 'Говорение 43.1. Связное тематическое монологическое высказывание с использованием основных коммуникативных типов речи (описание, повествование, рассуждение, характеристика). Решение коммуникативной задачи (содержание)'as specific,CONVERT(NUMERIC(5,1), ROUND([ss11], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc11], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr11], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s11]
		,(select 'Говорение 43.2. Связное тематическое монологическое высказывание с использованием основных коммуникативных типов речи (описание, повествование, рассуждение, характеристика. Организация высказывания'as specific,CONVERT(NUMERIC(5,1), ROUND([ss12], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc12], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr12], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s12]
		,(select 'Говорение 43.3. Связное тематическое монологическое высказывание с использованием основных коммуникативных типов речи (описание, повествование, рассуждение, характеристика). Языковое оформление высказывания'as specific,CONVERT(NUMERIC(5,1), ROUND([ss13], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc13], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr13], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s13]
		,(select 'Говорение 44.1. Связное тематическое монологическое высказывание –передача основного содержания увиденного с выражением своего отношения, оценки, аргументации (сравнение двух фотографий). Решение коммуникативной задачи (содержание)'as specific,CONVERT(NUMERIC(5,1), ROUND([ss14], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc14], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr14], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s14]
		,(select 'Говорение 44.2. Связное тематическое монологическое высказывание –передача основного содержания увиденного с выражением своего отношения, оценки, аргументации (сравнение двух фотографий). Организация высказывания'as specific,CONVERT(NUMERIC(5,1), ROUND([ss15], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc15], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr15], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s15]
		,(select 'Говорение 44.3. Связное тематическое монологическое высказывание –передача основного содержания увиденного с выражением своего отношения, оценки, аргументации (сравнение двух фотографий). Языковое оформление высказывания'as specific,CONVERT(NUMERIC(5,1), ROUND([ss16], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc16], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr16], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s16]
		


from #TempSchool
) as ty
select * from #Sepjson

go
insert into ['2020']

	select [code_sub],[name_sub], [year], [code_ou], 
		[name_ou],[type_ou],[district],[cluster],
		(select Count(*) as [Количество участников]

				,CONVERT(NUMERIC(3,1), ROUND(sum([Балл])/Count([Балл]), 1, 1)) as [Средний тестовый балл]
				,(select Count([Зачет]) from [dbo].[Sheet1$] where [Код предмета] = 9 and [Зачет] = 2 and #Sepjson.[code_ou] = [dbo].[Sheet1$].[Код ОУ]) as [Не преодолели минимального порогового значения]
				,(select Count([Балл]) from [dbo].[Sheet1$] where [Код предмета] = 9 and [Балл] = 100 and #Sepjson.[code_ou] = [dbo].[Sheet1$].[Код ОУ]) as [Количество 100-балльников]
		
		from [dbo].[Sheet1$]
		where [Код предмета] = 9 and
		#Sepjson.[code_ou] = [dbo].[Sheet1$].[Код ОУ]
		for json path
		) as stat,
		  '[' + [1]+ ',' +
		  [2]+ ',' +
		  [3]+ ',' +
		  [4]+ ',' +
		  [5]+ ',' +
		  [6]+ ',' +
		  [7]+ ',' +
		  [8]+ ',' +
		  [9]+ ',' +
		  [10]+ ',' +
		  [11]+ ',' +
		  [12]+ ',' +
		  [13]+ ',' +
		  [14]+ ',' +
		  [15]+ ',' +
		  [16]+ ',' +
		  [17]+ ',' +
		  [18]+ ',' +
		  [19]+ ',' +
		  [20]+ ',' +
		  [21]+ ',' +
		  [22]+ ',' +
		  [23]+ ',' +
		  [24]+ ',' +
		  [25]+ ',' +
		  [26]+ ',' +
		  [27]+ ',' +
		  [28]+ ',' +
		  [29]+ ',' +
		  [30]+ ',' +
		  [31]+ ',' +
		  [32]+ ',' +
		  [33]+ ',' +
		  [34]+ ',' +
		  [35]+ ',' +
		  [36]+ ',' +
		  [37]+ ',' +
		  [38]+ ']' as part1,
		  '[' + [s1]+ ',' +
		  [s2]+ ',' +
		  [s3]+ ',' +
		  [s4]+ ',' +
		  [s5]+ ',' +
		  [s6]+ ',' +
		  [s7]+ ',' +
		  [s8]+ ',' +
		  [s9]+ ',' +
		  [s10]+ ',' +
		  [s11]+ ',' +
		  [s12]+ ',' +
		  [s13]+ ',' +
		  [s14]+ ',' +
		  [s15]+ ',' +
		  [s16]+ ']' as part2
		  from #Sepjson


COMMIT TRANSACTION; 





