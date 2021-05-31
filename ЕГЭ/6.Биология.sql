
IF OBJECT_ID(N'tempdb..#TempEge', N'U') is not null begin
	drop table #TempEge
end
go
with MyTable( [code_sub],[name_sub], [year], [code_ou], 
			  [name_ou],[type_ou],[district],[cluster],[part1],[part2]) 
as
	(select   [Код предмета],'Биология',Year([Дата экзамена]),[Код ОУ], 
			  [Наименование ОУ],[Тип ОУ],[Муниципальный район],[Кластер],[TestResultB],[TestResultC]

	from   [dbo].[ege2020]
	where  [Код предмета] = 6
	)

select * into #TempEge
from MyTable

go

alter table #TempEge add [1] float,[2] float,[3]float,[4]float,[5]float,
							[6]float,[7]float,[8]float,[9]float,[10]float,
							[11]float,[12]float,[13]float,[14]float,[15]float,
							[16]float,[17]float,[18]float,[19]float,[20]float,
							[21]float,[s1] float,[s2] float,[s3]float,[s4]float,[s5]float,
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
,[c17],[c18],[c19],[c20],[c21],[sc1],[sc2],[sc3],[sc4],[sc5],[sc6],[sc7]) 
as (select [cluster]
	,round((sum([1])/Count([1]))/1*100, 1,1) as [1]
	  , round((sum([2])/Count([2]))/1*100, 1,1) as [2]
	  , round((sum([3])/Count([3]))/1*100, 1,1) as [3]
	  , round((sum([4])/Count([4]))/2*100, 1,1) as [4]
	  , round((sum([5])/Count([5]))/2*100, 1,1) as [5]
	  , round((sum([6])/Count([6]))/1*100, 1,1) as [6]
	  , round((sum([7])/Count([7]))/2*100, 1,1) as [7]
	  , round((sum([8])/Count([8]))/2*100, 1,1) as [8]
	  , round((sum([9])/Count([9]))/2*100, 1,1) as [9]
	  , round((sum([10])/Count([10]))/2*100, 1,1) as [10]
	  , round((sum([11])/Count([11]))/2*100, 1,1) as [11]
	  , round((sum([12])/Count([12]))/2*100, 1,1) as [12]
	  , round((sum([13])/Count([13]))/2*100, 1,1) as [13]
	  , round((sum([14])/Count([14]))/2*100, 1,1) as [14]
	  , round((sum([15])/Count([15]))/2*100, 1,1) as [15]
	  , round((sum([16])/Count([16]))/2*100, 1,1) as [16]
	  , round((sum([17])/Count([17]))/2*100, 1,1) as [17]
	  , round((sum([18])/Count([18]))/2*100, 1,1) as [18]
	  , round((sum([19])/Count([19]))/2*100, 1,1) as [19]
	  , round((sum([20])/Count([20]))/2*100, 1,1) as [20]
	  , round((sum([21])/Count([21]))/2*100, 1,1) as [21]

	  ,round((sum([s1])/Count([s1]))/2*100, 1,1) as [s1]
	  , round((sum([s2])/Count([s2]))/3*100, 1,1) as [s2]
	  , round((sum([s3])/Count([s3]))/3*100, 1,1) as [s3]
	  , round((sum([s4])/Count([s4]))/3*100, 1,1) as [s4]
	  , round((sum([s5])/Count([s5]))/3*100, 1,1) as [s5]
	  , round((sum([s6])/Count([s6]))/3*100, 1,1) as [s6]
	  , round((sum([s7])/Count([s7]))/3*100, 1,1) as [s7]

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
,[r17],[r18],[r19],[r20],[r21],[sr1],[sr2],[sr3],[sr4],[sr5],[sr6],[sr7]) 
as (select
		round((sum([1])/Count([1]))/1*100, 1,1) as [r1]
	  , round((sum([2])/Count([2]))/1*100, 1,1) as [r2]
	  , round((sum([3])/Count([3]))/1*100, 1,1) as [r3]
	  , round((sum([4])/Count([4]))/2*100, 1,1) as [r4]
	  , round((sum([5])/Count([5]))/2*100, 1,1) as [r5]
	  , round((sum([6])/Count([6]))/1*100, 1,1) as [r6]
	  , round((sum([7])/Count([7]))/2*100, 1,1) as [r7]
	  , round((sum([8])/Count([8]))/2*100, 1,1) as [r8]
	  , round((sum([9])/Count([9]))/2*100, 1,1) as [r9]
	  , round((sum([10])/Count([10]))/2*100, 1,1) as [r10]
	  , round((sum([11])/Count([11]))/2*100, 1,1) as [r11]
	  , round((sum([12])/Count([12]))/2*100, 1,1) as [r12]
	  , round((sum([13])/Count([13]))/2*100, 1,1) as [r13]
	  , round((sum([14])/Count([14]))/2*100, 1,1) as [r14]
	  , round((sum([15])/Count([15]))/2*100, 1,1) as [r15]
	  , round((sum([16])/Count([16]))/2*100, 1,1) as [r16]
	  , round((sum([17])/Count([17]))/2*100, 1,1) as [r17]
	  , round((sum([18])/Count([18]))/2*100, 1,1) as [r18]
	  , round((sum([19])/Count([19]))/2*100, 1,1) as [r19]
	  , round((sum([20])/Count([20]))/2*100, 1,1) as [r20]
	  , round((sum([21])/Count([21]))/2*100, 1,1) as [r21]

	  ,round((sum([s1])/Count([s1]))/2*100, 1,1) as [s1]
	  , round((sum([s2])/Count([s2]))/3*100, 1,1) as [s2]
	  , round((sum([s3])/Count([s3]))/3*100, 1,1) as [s3]
	  , round((sum([s4])/Count([s4]))/3*100, 1,1) as [s4]
	  , round((sum([s5])/Count([s5]))/3*100, 1,1) as [s5]
	  , round((sum([s6])/Count([s6]))/3*100, 1,1) as [s6]
	  , round((sum([s7])/Count([s7]))/3*100, 1,1) as [s7]
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
	  , round((sum([3])/Count([3]))/1*100, 1,1) as [s3]
	  , round((sum([4])/Count([4]))/2*100, 1,1) as [s4]
	  , round((sum([5])/Count([5]))/2*100, 1,1) as [s5]
	  , round((sum([6])/Count([6]))/1*100, 1,1) as [s6]
	  , round((sum([7])/Count([7]))/2*100, 1,1) as [s7]
	  , round((sum([8])/Count([8]))/2*100, 1,1) as [s8]
	  , round((sum([9])/Count([9]))/2*100, 1,1) as [s9]
	  , round((sum([10])/Count([10]))/2*100, 1,1) as [s10]
	  , round((sum([11])/Count([11]))/2*100, 1,1) as [s11]
	  , round((sum([12])/Count([12]))/2*100, 1,1) as [s12]
	  , round((sum([13])/Count([13]))/2*100, 1,1) as [s13]
	  , round((sum([14])/Count([14]))/2*100, 1,1) as [s14]
	  , round((sum([15])/Count([15]))/2*100, 1,1) as [s15]
	  , round((sum([16])/Count([16]))/2*100, 1,1) as [s16]
	  , round((sum([17])/Count([17]))/2*100, 1,1) as [s17]
	  , round((sum([18])/Count([18]))/2*100, 1,1) as [s18]
	  , round((sum([19])/Count([19]))/2*100, 1,1) as [s19]
	  , round((sum([20])/Count([20]))/2*100, 1,1) as [s20]
	  , round((sum([21])/Count([21]))/2*100, 1,1) as [s21]

	  , round((sum([s1])/Count([s1]))/2*100, 1,1) as [ss1]
	  , round((sum([s2])/Count([s2]))/3*100, 1,1) as [ss2]
	  , round((sum([s3])/Count([s3]))/3*100, 1,1) as [ss3]
	  , round((sum([s4])/Count([s4]))/3*100, 1,1) as [ss4]
	  , round((sum([s5])/Count([s5]))/3*100, 1,1) as [ss5]
	  , round((sum([s6])/Count([s6]))/3*100, 1,1) as [ss6]
	  , round((sum([s7])/Count([s7]))/3*100, 1,1) as [ss7]

from #TempEge
group by [code_sub],[name_sub], [year], [code_ou], 
			  [name_ou],[type_ou],[district],[cluster]
) as qwer

--select * from #TempSchool
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

		,(select 'Биологические термины и понятия.  Дополнение схемы' as specific, CONVERT(NUMERIC(5,1), ROUND([s1], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c1], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r1], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [1]
		,(select 'Биология как наука. Методы научного познания. Уровни организации живого. Работа с таблицей 'as specific,CONVERT(NUMERIC(5,1), ROUND([s2], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c2], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r2], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [2]
		,(select 'Генетическая информация в клетке. Хромосомный набор, соматические и половые клетки.  Решение биологической задачи 'as specific,CONVERT(NUMERIC(5,1), ROUND([s3], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c3], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r3], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [3]
		,(select 'Клетка как биологическая система. Жизненный цикл клетки.  Множественный выбор (с рисунком и без рисунка)'as specific,CONVERT(NUMERIC(5,1), ROUND([s4], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c4], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r4], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [4]
		,(select 'Клетка как биологическая система. Строение клетки, метаболизм. Жизненный цикл клетки.  Установление соответствия  (с рисунком и без рисунка)'as specific,CONVERT(NUMERIC(5,1), ROUND([s5], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c5], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r5], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [5]
		,(select 'Моно- и дигибридное, анализирующее скрещивание.  Решение биологической задачи'as specific,CONVERT(NUMERIC(5,1), ROUND([s6], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c6], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r6], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [6]
		,(select 'Организм как биологическая система.  Селекция. Биотехнология. Множественный выбор  (с рисунком и без рисунка)'as specific,CONVERT(NUMERIC(5,1), ROUND([s7], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c7], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r7], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [7]
		,(select 'Организм как биологическая система. Селекция. Биотехнология. Установление соответствия  (с рисунком и без рисунка) 'as specific,CONVERT(NUMERIC(5,1), ROUND([s8], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c8], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r8], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [8]
		,(select 'Многообразие организмов. Бактерии, Грибы, Растения, Животные, Вирусы.  Множественный выбор  (с рисунком и без рисунка)'as specific,CONVERT(NUMERIC(5,1), ROUND([s9], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c9], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r9], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [9]
		,(select 'Многообразие организмов. Бактерии, Грибы, Растения, Животные, Вирусы.  Установление соответствия  (с рисунком и без рисунка)'as specific,CONVERT(NUMERIC(5,1), ROUND([s10], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c10], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r10], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [10]
		,(select 'Многообразие организмов. Основные систематические категории, их соподчинённость.  Установление последовательности 'as specific,CONVERT(NUMERIC(5,1), ROUND([s11], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c11], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r11], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [11]
		,(select 'Организм человека. Гигиена человека. Множественный выбор  (с рисунком и без рисунка)'as specific,CONVERT(NUMERIC(5,1), ROUND([s12], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c12], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r12], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [12]
		,(select 'Организм человека.  Установление соответствия  (с рисунком и без рисунка)'as specific,CONVERT(NUMERIC(5,1), ROUND([s13], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c13], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r13], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [13]
		,(select 'Организм человека.  Установление последовательности'as specific,CONVERT(NUMERIC(5,1), ROUND([s14], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c14], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r14], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [14]
		,(select 'Эволюция живой природы. Множественный выбор (работа с текстом)'as specific,CONVERT(NUMERIC(5,1), ROUND([s15], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c15], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r15], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [15]
		,(select 'Эволюция живой природы. Происхождение человека. Установление соответствия (без рисунка)'as specific,CONVERT(NUMERIC(5,1), ROUND([s16], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c16], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r16], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [16]
		,(select 'Экосистемы и присущие им закономерности. Биосфера.  Множественный выбор  (без рисунка)'as specific,CONVERT(NUMERIC(5,1), ROUND([s17], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c17], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r17], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [17]
		,(select 'Экосистемы и присущие им закономерности. Биосфера.  Установление соответствия (без рисунка)'as specific,CONVERT(NUMERIC(5,1), ROUND([s18], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c18], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r18], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [18]
		,(select 'Общебиологические закономерности.  Установление последовательности'as specific,CONVERT(NUMERIC(5,1), ROUND([s19], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c19], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r19], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [19]
		,(select 'Общебиологические закономерности. Человек и его здоровье. Работа с таблицей (с рисунком и без рисунка)'as specific,CONVERT(NUMERIC(5,1), ROUND([s20], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c20], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r20], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [20]
		,(select 'Биологические системы  и их закономерности.  Анализ данных, в табличной или графической форме'as specific,CONVERT(NUMERIC(5,1), ROUND([s21], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c21], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r21], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [21]

		,(select 'Применение биологических знаний в практических ситуациях (практико-ориентированное задание)' as specific, CONVERT(NUMERIC(5,1), ROUND([ss1], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc1], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr1], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s1]
		,(select 'Задание с изображением биологического объекта 'as specific,CONVERT(NUMERIC(5,1), ROUND([ss2], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc2], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr2], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s2]
		,(select 'Задание на анализ биологической информации 'as specific,CONVERT(NUMERIC(5,1), ROUND([ss3], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc3], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr3], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s3]
		,(select 'Обобщение и применение знаний о человеке и многообразии организмов 'as specific,CONVERT(NUMERIC(5,1), ROUND([ss4], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc4], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr4], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s4]
		,(select 'Обобщение и применение знаний об эволюции органического мира и экологических закономерностях в новой ситуации'as specific,CONVERT(NUMERIC(5,1), ROUND([ss5], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc5], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr5], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s5]
		,(select 'Решение задач по цитологии на применение знаний в новой ситуации'as specific,CONVERT(NUMERIC(5,1), ROUND([ss6], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc6], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr6], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s6]
		,(select 'Решение задач по генетике на применение знаний в новой ситуации'as specific,CONVERT(NUMERIC(5,1), ROUND([ss7], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc7], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr7], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s7]
from #TempSchool
) as ty

go
insert into ['2020']
select [code_sub],[name_sub], [year], [code_ou], 
		[name_ou],[type_ou],[district],[cluster],
		(select Count(*) as [Количество участников]

				,CONVERT(NUMERIC(3,1), ROUND(sum([Балл])/Count([Балл]), 1, 1)) as [Средний тестовый балл]
				,(select Count([Зачет]) from [dbo].[ege2020] where [Код предмета] = 6 and [Зачет] = 2 and #Sepjson.[code_ou] = [dbo].[ege2020].[Код ОУ]) as [Не преодолели минимального порогового значения]
				,(select Count([Балл]) from [dbo].[ege2020] where [Код предмета] = 6 and [Балл] = 100 and #Sepjson.[code_ou] = [dbo].[ege2020].[Код ОУ]) as [Количество 100-балльников]
		
		from [dbo].[ege2020] 
		where [Код предмета] = 6 and
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
		  [21]+ ']' as part1,
		  '[' + [s1]+ ',' +
		  [s2]+ ',' +
		  [s3]+ ',' +
		  [s4]+ ',' +
		  [s5]+ ',' +
		  [s6]+ ',' +
		  [s7]+ ']' as part2
		  from #Sepjson
