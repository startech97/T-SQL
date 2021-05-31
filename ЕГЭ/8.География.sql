IF OBJECT_ID(N'tempdb..#TempEge', N'U') is not null begin
	drop table #TempEge
end
go
with MyTable( [code_sub],[name_sub], [year], [code_ou], 
			  [name_ou],[type_ou],[district],[cluster],[part1],[part2]) 
as
	(select   [Код предмета],'География',Year([Дата экзамена]),[Код ОУ], --!!
			  [Наименование ОУ],[Тип ОУ],[Муниципальный район],[Кластер],[TestResultB],[TestResultC]

	from   [dbo].[ege2020]
	where  [Код предмета] = 8        --!
	)

select * into #TempEge
from MyTable

go

alter table #TempEge add [1] float,[2] float,[3]float,[4]float,[5]float,
							[6]float,[7]float,[8]float,[9]float,[10]float,
							[11]float,[12]float,[13]float,[14]float,[15]float,
							[16]float,[17]float,[18]float,[19]float,[20]float,
							[21]float,[22]float,[23]float,[24]float,[25]float,
							[26]float,[27]float,[s1] float,[s2] float,[s3]float,[s4]float,[s5]float,
							[s6]float,[s7]float
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
	[25] = substring(part1,25,1),[26] = substring(part1,26,1),[27] = substring(part1,27,1)
	,
	[s1] = substring(part2,1,1),[s2] = substring(part2,2,1),[s3] = substring(part2,3,1),
	[s4] = substring(part2,4,1),[s5] = substring(part2,5,1),[s6] = substring(part2,6,1),
	[s7] = substring(part2,7,1)
go

alter table #TempEge drop column [part1],[part2]
select * from  #TempEge
update #TempEge
set [cluster] = 0
where [cluster] is null
go
IF OBJECT_ID(N'tempdb..#TempCluster', N'U') is not null begin
	drop table #TempCluster
end;

with ClusterGroup ([cluster2],[c1],[c2],[c3],[c4],[c5],[c6],[c7],[c8],[c9],[c10],[c11],[c12],[c13],[c14],[c15],[c16]
,[c17],[c18],[c19],[c20],[c21],[c22],[c23],[c24],[c25],[c26],[c27],[sc1],[sc2],[sc3],[sc4],[sc5],[sc6],[sc7]) 
as (select [cluster]
	,round((sum([1])/Count([1]))/1*100, 1,1) as [1]
	  , round((sum([2])/Count([2]))/1*100, 1,1) as [2]
	  , round((sum([3])/Count([3]))/2*100, 1,1) as [3]
	  , round((sum([4])/Count([4]))/2*100, 1,1) as [4]
	  , round((sum([5])/Count([5]))/1*100, 1,1) as [5]
	  , round((sum([6])/Count([6]))/1*100, 1,1) as [6]
	  , round((sum([7])/Count([7]))/1*100, 1,1) as [7]
	  , round((sum([8])/Count([8]))/1*100, 1,1) as [8]
	  , round((sum([9])/Count([9]))/1*100, 1,1) as [9]
	  , round((sum([10])/Count([10]))/1*100, 1,1) as [10]
	  , round((sum([11])/Count([11]))/2*100, 1,1) as [11]
	  , round((sum([12])/Count([12]))/1*100, 1,1) as [12]
	  , round((sum([13])/Count([13]))/1*100, 1,1) as [13]
	  , round((sum([14])/Count([14]))/2*100, 1,1) as [14]
	  , round((sum([15])/Count([15]))/2*100, 1,1) as [15]
	  , round((sum([16])/Count([16]))/1*100, 1,1) as [16]
	  , round((sum([17])/Count([17]))/1*100, 1,1) as [17]
	  , round((sum([18])/Count([18]))/2*100, 1,1) as [18]
	  , round((sum([19])/Count([19]))/1*100, 1,1) as [19]
	  , round((sum([20])/Count([20]))/1*100, 1,1) as [20]
	  , round((sum([21])/Count([21]))/1*100, 1,1) as [21]
	  , round((sum([22])/Count([22]))/1*100, 1,1) as [22]
	  , round((sum([23])/Count([23]))/1*100, 1,1) as [23]
	  , round((sum([24])/Count([24]))/1*100, 1,1) as [24]
	  , round((sum([25])/Count([25]))/1*100, 1,1) as [25]
	  , round((sum([26])/Count([26]))/1*100, 1,1) as [26]
	  , round((sum([27])/Count([27]))/1*100, 1,1) as [27]

	  ,round((sum([s1])/Count([s1]))/2*100, 1,1) as [s1]
	  , round((sum([s2])/Count([s2]))/2*100, 1,1) as [s2]
	  , round((sum([s3])/Count([s3]))/2*100, 1,1) as [s3]
	  , round((sum([s4])/Count([s4]))/2*100, 1,1) as [s4]
	  , round((sum([s5])/Count([s5]))/2*100, 1,1) as [s5]
	  , round((sum([s6])/Count([s6]))/2*100, 1,1) as [s6]
	  , round((sum([s7])/Count([s7]))/2*100, 1,1) as [s7]
	from #TempEge
	group by [cluster]
	)
select * into #TempCluster 
from ClusterGroup

select * from #TempCluster
update #TempCluster
set [cluster2] = '0'
where [cluster2] is null

go
	IF OBJECT_ID(N'tempdb..#TempRegion', N'U') is not null begin
	drop table #TempRegion
end;
with RegionGroup ([r1],[r2],[r3],[r4],[r5],[r6],[r7],[r8],[r9],[r10],[r11],[r12],[r13],[r14],[r15],[r16]
,[r17],[r18],[r19],[r20],[r21],[r22],[r23],[r24],[r25],[r26],[r27],[sr1],[sr2],[sr3],[sr4],[sr5],[sr6],[sr7]) 
as (select
		round((sum([1])/Count([1]))/1*100, 1,1) as [r1]
	  , round((sum([2])/Count([2]))/1*100, 1,1) as [r2]
	  , round((sum([3])/Count([3]))/2*100, 1,1) as [r3]
	  , round((sum([4])/Count([4]))/2*100, 1,1) as [r4]
	  , round((sum([5])/Count([5]))/1*100, 1,1) as [r5]
	  , round((sum([6])/Count([6]))/1*100, 1,1) as [r6]
	  , round((sum([7])/Count([7]))/1*100, 1,1) as [r7]
	  , round((sum([8])/Count([8]))/1*100, 1,1) as [r8]
	  , round((sum([9])/Count([9]))/1*100, 1,1) as [r9]
	  , round((sum([10])/Count([10]))/1*100, 1,1) as [r10]
	  , round((sum([11])/Count([11]))/2*100, 1,1) as [r11]
	  , round((sum([12])/Count([12]))/1*100, 1,1) as [r12]
	  , round((sum([13])/Count([13]))/1*100, 1,1) as [r13]
	  , round((sum([14])/Count([14]))/2*100, 1,1) as [r14]
	  , round((sum([15])/Count([15]))/2*100, 1,1) as [r15]
	  , round((sum([16])/Count([16]))/1*100, 1,1) as [r16]
	  , round((sum([17])/Count([17]))/1*100, 1,1) as [r17]
	  , round((sum([18])/Count([18]))/2*100, 1,1) as [r18]
	  , round((sum([19])/Count([19]))/1*100, 1,1) as [r19]
	  , round((sum([20])/Count([20]))/1*100, 1,1) as [r20]
	  , round((sum([21])/Count([21]))/1*100, 1,1) as [r21]
	  , round((sum([22])/Count([22]))/1*100, 1,1) as [r22]
	  , round((sum([23])/Count([23]))/1*100, 1,1) as [r23]
	  , round((sum([24])/Count([24]))/1*100, 1,1) as [r24]
	  , round((sum([25])/Count([25]))/1*100, 1,1) as [r25]
	  , round((sum([26])/Count([26]))/1*100, 1,1) as [r26]
	  , round((sum([27])/Count([27]))/1*100, 1,1) as [r27]

	  ,round((sum([s1])/Count([s1]))/2*100, 1,1) as [s1]
	  , round((sum([s2])/Count([s2]))/2*100, 1,1) as [s2]
	  , round((sum([s3])/Count([s3]))/2*100, 1,1) as [s3]
	  , round((sum([s4])/Count([s4]))/2*100, 1,1) as [s4]
	  , round((sum([s5])/Count([s5]))/2*100, 1,1) as [s5]
	  , round((sum([s6])/Count([s6]))/2*100, 1,1) as [s6]
	  , round((sum([s7])/Count([s7]))/2*100, 1,1) as [s7]
	from #TempEge
	)

select * into #TempRegion 
from RegionGroup
go
IF OBJECT_ID(N'tempdb..#TempSchool', N'U') is not null begin
	drop table #TempSchool
end;
select * into #TempSchool
from(
select [code_sub],[name_sub], [year], [code_ou], 
		[name_ou],[type_ou],[district],[cluster]
		, round((sum([1])/Count([1]))/1*100, 1,1) as [s1]
	  , round((sum([2])/Count([2]))/1*100, 1,1) as [s2]
	  , round((sum([3])/Count([3]))/2*100, 1,1) as [s3]
	  , round((sum([4])/Count([4]))/2*100, 1,1) as [s4]
	  , round((sum([5])/Count([5]))/1*100, 1,1) as [s5]
	  , round((sum([6])/Count([6]))/1*100, 1,1) as [s6]
	  , round((sum([7])/Count([7]))/1*100, 1,1) as [s7]
	  , round((sum([8])/Count([8]))/1*100, 1,1) as [s8]
	  , round((sum([9])/Count([9]))/1*100, 1,1) as [s9]
	  , round((sum([10])/Count([10]))/1*100, 1,1) as [s10]
	  , round((sum([11])/Count([11]))/2*100, 1,1) as [s11]
	  , round((sum([12])/Count([12]))/1*100, 1,1) as [s12]
	  , round((sum([13])/Count([13]))/1*100, 1,1) as [s13]
	  , round((sum([14])/Count([14]))/2*100, 1,1) as [s14]
	  , round((sum([15])/Count([15]))/2*100, 1,1) as [s15]
	  , round((sum([16])/Count([16]))/1*100, 1,1) as [s16]
	  , round((sum([17])/Count([17]))/1*100, 1,1) as [s17]
	  , round((sum([18])/Count([18]))/2*100, 1,1) as [s18]
	  , round((sum([19])/Count([19]))/1*100, 1,1) as [s19]
	  , round((sum([20])/Count([20]))/1*100, 1,1) as [s20]
	  , round((sum([21])/Count([21]))/1*100, 1,1) as [s21]
	  , round((sum([22])/Count([22]))/1*100, 1,1) as [s22]
	  , round((sum([23])/Count([23]))/1*100, 1,1) as [s23]
	  , round((sum([24])/Count([24]))/1*100, 1,1) as [s24]
	  , round((sum([25])/Count([25]))/1*100, 1,1) as [s25]
	  , round((sum([26])/Count([26]))/1*100, 1,1) as [s26]
	  , round((sum([27])/Count([27]))/1*100, 1,1) as [s27]

	  , round((sum([s1])/Count([s1]))/2*100, 1,1) as [ss1]
	  , round((sum([s2])/Count([s2]))/2*100, 1,1) as [ss2]
	  , round((sum([s3])/Count([s3]))/2*100, 1,1) as [ss3]
	  , round((sum([s4])/Count([s4]))/2*100, 1,1) as [ss4]
	  , round((sum([s5])/Count([s5]))/2*100, 1,1) as [ss5]
	  , round((sum([s6])/Count([s6]))/2*100, 1,1) as [ss6]
	  , round((sum([s7])/Count([s7]))/2*100, 1,1) as [ss7]

from #TempEge
group by [code_sub],[name_sub], [year], [code_ou], 
			  [name_ou],[type_ou],[district],[cluster]
) as qwer

select * from #TempSchool
IF OBJECT_ID(N'tempdb..#Full', N'U') is not null begin
	drop table #Full
end;
select * into #Full
from #TempSchool s join #TempCluster c
on s.[cluster] = c.[cluster2]
cross join #TempRegion
IF OBJECT_ID(N'tempdb..#Sepjson', N'U') is not null begin
	drop table #Sepjson
end;
select * into #Sepjson
from(
select [code_sub],[name_sub], [year], [code_ou], 
		[name_ou],[type_ou],[district],[cluster]
		,(select 'Географические модели. Географическая карта, план местности' as specific, CONVERT(NUMERIC(5,1), ROUND([s1], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c1], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r1], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [1]
		,(select 'Атмосфера. Гидросфера 'as specific,CONVERT(NUMERIC(5,1), ROUND([s2], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c2], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r2], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [2]
		,(select 'Природные ресурсы. Рациональное и нерациональное природопользование 'as specific,CONVERT(NUMERIC(5,1), ROUND([s3], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c3], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r3], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [3]
		,(select 'Литосфера. Гидросфера. Атмосфера. Географическая оболочка Земли. Широтная зональность и высотная поясность. Природа России 'as specific,CONVERT(NUMERIC(5,1), ROUND([s4], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c4], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r4], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [4]
		,(select 'Особенности природы материков и океанов. Особенности распространения крупных форм рельефа материков в России. Типы климата, факторы их формирования, климатические пояса России 'as specific,CONVERT(NUMERIC(5,1), ROUND([s5], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c5], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r5], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [5]
		,(select 'Земля как планета. Форма, размеры, движение Земли 'as specific,CONVERT(NUMERIC(5,1), ROUND([s6], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c6], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r6], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [6]
		,(select 'Литосфера. Рельеф земной поверхности. Мировой океан и его части. Воды суши. Особенности природы материков и океанов 'as specific,CONVERT(NUMERIC(5,1), ROUND([s7], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c7], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r7], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [7]
		,(select 'Географические особенности воспроизводства населения мира. Половозрастной состав. Уровень и качество жизни населения 'as specific,CONVERT(NUMERIC(5,1), ROUND([s8], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c8], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r8], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [8]
		,(select 'Географические особенности размещения населения. Неравномерность размещения населения земного шара. Размещение населения России. Основная полоса расселения'as specific,CONVERT(NUMERIC(5,1), ROUND([s9], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c9], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r9], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [9]
		,(select 'Структура занятости населения. Отраслевая структура хозяйства 'as specific,CONVERT(NUMERIC(5,1), ROUND([s10], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c10], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r10], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [10]
		,(select 'Особенности природноресурсного потенциала, населения, хозяйства, культуры крупных стран мира'as specific,CONVERT(NUMERIC(5,1), ROUND([s11], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c11], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r11], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [11]
		,(select 'Городское и сельское население. Города 'as specific,CONVERT(NUMERIC(5,1), ROUND([s12], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c12], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r12], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [12]
		,(select 'География отраслей промышленности России. География сельского хозяйства. География важнейших видов транспорта 'as specific,CONVERT(NUMERIC(5,1), ROUND([s13], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c13], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r13], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [13]
		,(select 'Природно-хозяйственное районирование России. Регионы России 'as specific,CONVERT(NUMERIC(5,1), ROUND([s14], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c14], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r14], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [14]
		,(select 'Определение географических объектов и явлений по их существенным признакам 'as specific,CONVERT(NUMERIC(5,1), ROUND([s15], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c15], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r15], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [15]
		,(select 'Мировое хозяйство. Хозяйство России. Регионы России 'as specific,CONVERT(NUMERIC(5,1), ROUND([s16], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c16], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r16], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [16]
		,(select 'Погода и климат. Распределение тепла и влаги на Земле 'as specific,CONVERT(NUMERIC(5,1), ROUND([s17], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c17], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r17], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [17]
		,(select 'Административно-территориальное устройство России. Столицы и крупные города 'as specific,CONVERT(NUMERIC(5,1), ROUND([s18], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c18], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r18], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [18]
		,(select 'Ведущие страны – экспортеры основных видов промышленной продукции. Ведущие страны – экспортеры основных видов сельскохозяйственной продукции. Основные международные магистрали и транспортные узлы 'as specific,CONVERT(NUMERIC(5,1), ROUND([s19], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c19], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r19], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [19]
		,(select 'Часовые зоны 'as specific,CONVERT(NUMERIC(5,1), ROUND([s20], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c20], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r20], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [20]
		,(select 'Направление и типы миграции населения России. Городское и сельское население. Регионы России 'as specific,CONVERT(NUMERIC(5,1), ROUND([s21], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c21], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r21], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [21]
		,(select 'Природные ресурсы 'as specific,CONVERT(NUMERIC(5,1), ROUND([s22], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c22], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r22], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [22]
		,(select 'Этапы геологической истории земной коры. Геологическая хронология 'as specific,CONVERT(NUMERIC(5,1), ROUND([s23], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c23], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r23], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [23]
		,(select 'Особенности природноресурсного потенциала, населения, хозяйства, культуры крупных стран мира 'as specific,CONVERT(NUMERIC(5,1), ROUND([s24], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c24], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r24], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [24]
		,(select 'Природно-хозяйственное районирование России. Регионы России 'as specific,CONVERT(NUMERIC(5,1), ROUND([s25], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c25], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r25], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [25]
		,(select 'Географические модели. Географическая карта, план местности 'as specific,CONVERT(NUMERIC(5,1), ROUND([s26], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c26], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r26], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [26]
		,(select 'Географические модели. Географическая карта, план местности 'as specific,CONVERT(NUMERIC(5,1), ROUND([s27], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c27], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r27], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [27]

		,(select 'Географические модели. Географическая карта, план местности ' as specific, CONVERT(NUMERIC(5,1), ROUND([ss1], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc1], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr1], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s1]
		,(select 'Литосфера. Гидросфера. Атмосфера. Биосфера. Природа России. Динамика численности населения Земли. Половозрастной состав населения.  Факторы размещения производства. География отраслей промышленности, важнейших видов транспорта, сельского хозяйства. Рациональное и нерациональное природопользование. Особенности воздействия на окружающую среду различных сфер и отраслей хозяйства 'as specific,CONVERT(NUMERIC(5,1), ROUND([ss2], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc2], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr2], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s2]
		,(select 'Форма, размеры, движение Земли. Литосфера. Гидросфера. Атмосфера. Биосфера. Природа России. Динамика численности населения Земли. Половозрастной состав населения.  Факторы размещения производства. География отраслей промышленности, важнейших видов транспорта, сельского хозяйства. Рациональное и нерациональное природопользование. Особенности воздействия на окружающую среду различных сфер и отраслей хозяйства 'as specific,CONVERT(NUMERIC(5,1), ROUND([ss3], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc3], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr3], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s3]
		,(select 'География основных отраслей производственной и непроизводственной сфер 'as specific,CONVERT(NUMERIC(5,1), ROUND([ss4], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc4], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr4], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s4]
		,(select 'Земля как планета, современный облик планеты Земля. Форма, размеры, движение Земли'as specific,CONVERT(NUMERIC(5,1), ROUND([ss5], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc5], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr5], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s5]
		,(select 'Численность, естественное движение населения России 'as specific,CONVERT(NUMERIC(5,1), ROUND([ss6], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc6], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr6], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s6]
		,(select 'Направление и типы миграции'as specific,CONVERT(NUMERIC(5,1), ROUND([ss7], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc7], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr7], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s7]


from #TempSchool
) as ty

go
insert into ['2020']
select [code_sub],[name_sub], [year], [code_ou], 
		[name_ou],[type_ou],[district],[cluster],
		(select Count(*) as [Количество участников]

				,CONVERT(NUMERIC(3,1), ROUND(sum([Балл])/Count([Балл]), 1, 1)) as [Средний тестовый балл]
				,(select Count([Зачет]) from [dbo].[ege2020] where [Код предмета] = 8 and [Зачет] = 2 and #Sepjson.[code_ou] = [dbo].[ege2020].[Код ОУ]) as [Не преодолели минимального порогового значения]
				,(select Count([Балл]) from [dbo].[ege2020] where [Код предмета] = 8 and [Балл] = 100 and #Sepjson.[code_ou] = [dbo].[ege2020].[Код ОУ]) as [Количество 100-балльников]
		
		from [dbo].[ege2020] 
		where [Код предмета] = 8 and
		#Sepjson.[code_ou] = [dbo].[ege2020].[Код ОУ]
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
		  [26]+ ','+
		  [27] + ']'as part1,
		  '[' + [s1]+ ',' +
		  [s2]+ ',' +
		  [s3]+ ',' +
		  [s4]+ ',' +
		  [s5]+ ',' +
		  [s6]+ ',' +
		  [s7]+ ']' as part2
		  from #Sepjson
