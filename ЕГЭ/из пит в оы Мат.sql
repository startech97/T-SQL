IF OBJECT_ID(N'tempdb..#Tempcorr', N'U') is not null begin
	drop table #Tempcorr
end
IF OBJECT_ID(N'tempdb..#Tempmax', N'U') is not null begin
	drop table #Tempmax
end
IF OBJECT_ID(N'tempdb..#all', N'U') is not null begin
	drop table #all
end
select * into #Tempcorr
from [dbo].[Math]


select * from #Tempcorr


update #Tempcorr
set  [1] = 1 
where [1] = 0
update #Tempcorr
set  [2] = 1 
where [2] = 0
update #Tempcorr
set  [3] = 1 
where [3] = 0
update #Tempcorr
set  [4] = 1 
where [4] = 0
update #Tempcorr
set  [5] = 1 
where [5] = 0
update #Tempcorr
set  [6] = 1 
where [6] = 0
update #Tempcorr
set  [7] = 1 
where [7] = 0
update #Tempcorr
set  [8] = 1 
where [8] = 0
update #Tempcorr
set  [9] = 1 
where [9] = 0
update #Tempcorr
set  [10] = 1 
where [10] = 0
update #Tempcorr
set  [11] = 1 
where [11] = 0
update #Tempcorr
set  [12] = 1 
where [12] = 0
update #Tempcorr
set  [13] = 1 
where [13] = 0
update #Tempcorr
set  [14] = 1 
where [14] = 0
update #Tempcorr
set  [15] = 1 
where [15] = 0
update #Tempcorr
set  [16] = 1 
where [16] = 0
update #Tempcorr
set  [17] = 1 
where [17] = 0
update #Tempcorr
set  [18] = 1 
where [18] = 0
update #Tempcorr
set  [19] = 1 
where [19] = 0

go
select * into #Tempmax
from (
select [code] as code2,
	    round((sum([1])/Count([1]))/1*100, 1,1) as [s1]
	  , round((sum([2])/Count([2]))/1*100, 1,1) as [s2]
	  , round((sum([3])/Count([3]))/1*100, 1,1) as [s3]
	  , round((sum([4])/Count([4]))/1*100, 1,1) as [s4]
	  , round((sum([5])/Count([5]))/1*100, 1,1) as [s5]
	  , round((sum([6])/Count([6]))/1*100, 1,1) as [s6]
	  , round((sum([7])/Count([7]))/1*100, 1,1) as [s7]
	  , round((sum([8])/Count([8]))/1*100, 1,1) as [s8]
	  , round((sum([9])/Count([9]))/1*100, 1,1) as [s9]
	  , round((sum([10])/Count([10]))/1*100, 1,1) as [s10]
	  , round((sum([11])/Count([11]))/1*100, 1,1) as [s11]
	  , round((sum([12])/Count([12]))/1*100, 1,1) as [s12]
	  , round((sum([13])/Count([13]))/2*100, 1,1) as [s13]
	  , round((sum([14])/Count([14]))/2*100, 1,1) as [s14]
	  , round((sum([15])/Count([15]))/2*100, 1,1) as [s15]
	  , round((sum([16])/Count([16]))/3*100, 1,1) as [s16]
	  , round((sum([17])/Count([17]))/3*100, 1,1) as [s17]
	  , round((sum([18])/Count([18]))/4*100, 1,1) as [s18]
	  , round((sum([19])/Count([19]))/4*100, 1,1) as [s19]

from [dbo].[testCorrelationMath]
group by [code]
) as r
select * from #Tempmax
go
select * into #all
from (
select * from #Tempmax as m join #Tempcorr as c
on m.code2 = c.code
) as r



IF OBJECT_ID(N'tempdb..#correlation', N'U') is not null begin
	drop table #correlation1
end
select * into #correlation1
from #all

IF OBJECT_ID(N'tempdb..#correlation', N'U') is not null begin
	drop table #correlation
end
 select * into #correlation
 from(
select [code] as code_ou,
		(select '”меть использовать приобретенные знани€ и умени€ в практической де€тельности и повседневной жизни' as [specific], 1 as [number],cast([1] as numeric(18,2)) as [corr],cast([s1] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [1]
	   ,(select '”меть использовать приобретенные знани€ и умени€ в практической де€тельности и повседневной жизни' as [specific], 2 as [number],cast([2] as numeric(18,2)) as [corr],cast([s2] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [2]	   
	   ,(select '”меть выполн€ть действи€ с геометрическими фигурами, координатами и векторами' as [specific], 3 as [number],cast([3] as numeric(18,2)) as [corr],cast([s3] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [3]
	   ,(select '”меть строить и исследовать простейшие математические модели' as [specific], 4 as [number],cast([4] as numeric(18,2)) as [corr],cast([s4] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [4]	   
	   ,(select '”меть решать уравнени€ и неравенства' as [specific], 5 as [number],cast([5] as numeric(4,2)) as [corr],cast([s5] as numeric(7,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [5]
	   ,(select '”меть выполн€ть действи€ с геометрическими фигурами, координатами и векторами' as [specific], 6 as [number],cast([6] as numeric(18,2)) as [corr],cast([s6] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [6]
	   ,(select '”меть выполн€ть действи€ с функци€ми' as [specific], 7 as [number],cast([7] as numeric(18,2)) as [corr],cast([s7] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [7]
	   ,(select '”меть выполн€ть действи€ с геометрическими фигурами, координатами и векторами' as [specific], 8 as [number],cast([8] as numeric(18,2)) as [corr],cast([s8] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [8]
	   ,(select '”меть выполн€ть вычислени€ и преобразовани€' as [specific], 9 as [number],cast([9] as numeric(18,2)) as [corr],cast([s9] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [9]
	   ,(select '”меть использовать приобретенные знани€ и умени€ в практической де€тельности и повседневной жизни' as [specific], 10 as [number],cast([10] as numeric(18,2)) as [corr],cast([s10] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [10]
	   ,(select '”меть строить и исследовать простейшие математические модели' as [specific], 11 as [number],cast([11] as numeric(18,2)) as [corr],cast([s11] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [11]
	   ,(select '”меть выполн€ть действи€ с функци€ми' as [specific], 12 as [number],cast([12] as numeric(18,2)) as [corr],cast([s12] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [12]
	   ,(select '”меть выполн€ть действи€ с функци€ми' as [specific], 13 as [number],cast([13] as numeric(18,2)) as [corr],cast([s13] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [13]
	   ,(select '”меть выполн€ть действи€ с геометрическими фигурами, координатами и векторам' as [specific], 14 as [number],cast([14] as numeric(18,2)) as [corr],cast([s14] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [14]
	   ,(select '”меть решать уравнени€ и неравенства' as [specific], 15 as [number],cast([15] as numeric(18,2)) as [corr],cast([s15] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [15]
	   ,(select '”меть выполн€ть действи€ с геометрическими фигурами, координатами и векторами' as [specific], 16 as [number],cast([16] as numeric(18,2)) as [corr],cast([s16] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [16]
	   ,(select '”меть использовать приобретенные знани€ и умени€ в практической де€тельности и повседневной жизни' as [specific], 17 as [number], cast([17] as numeric(18,2)) as [corr],cast([s17] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [17]
	   ,(select '”меть решать уравнени€ и неравенства' as [specific], 18 as [number],cast([18] as numeric(18,2)) as [corr],cast([s18] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [18]
	   ,(select '”меть строить и исследовать простейшие математические модели' as [specific], 19 as [number],cast([19] as numeric(18,2)) as [corr],cast([s19] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [19]

from #correlation1
) as df
go

insert into correlation

select [code_ou] as 'code_ou',
		'ћатематика' as name_sub,
		2020 as year  ,
		2 as code_sub,
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
		  [19] + ']' as corr1
from #correlation


