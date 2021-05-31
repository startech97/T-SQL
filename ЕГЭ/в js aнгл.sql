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
from [dbo].[eng]
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
update #Tempcorr
set  [20] = 1 
where [20] = 0
update #Tempcorr
set  [21] = 1 
where [21] = 0
update #Tempcorr
set  [22] = 1 
where [22] = 0
update #Tempcorr
set  [23] = 1 
where [23] = 0
update #Tempcorr
set  [24] = 1 
where [24] = 0
update #Tempcorr
set  [25] = 1 
where [25] = 0
update #Tempcorr
set  [26] = 1 
where [26] = 0
update #Tempcorr
set  [27] = 1 
where [27] = 0
update #Tempcorr
set  [28] = 1 
where [28] = 0
update #Tempcorr
set  [29] = 1 
where [29] = 0
update #Tempcorr
set  [30] = 1 
where [30] = 0
update #Tempcorr
set  [31] = 1 
where [31] = 0
update #Tempcorr
set  [32] = 1 
where [32] = 0
update #Tempcorr
set  [33] = 1 
where [33] = 0
update #Tempcorr
set  [34] = 1 
where [34] = 0
update #Tempcorr
set  [35] = 1 
where [35] = 0
update #Tempcorr
set  [36] = 1 
where [36] = 0
update #Tempcorr
set  [37] = 1 
where [37] = 0
update #Tempcorr
set  [38] = 1 
where [38] = 0
update #Tempcorr
set  [39] = 1 
where [39] = 0
update #Tempcorr
set  [40] = 1 
where [40] = 0
update #Tempcorr
set  [41] = 1 
where [41] = 0
update #Tempcorr
set  [42] = 1 
where [42] = 0
update #Tempcorr
set  [43] = 1 
where [43] = 0
update #Tempcorr
set  [44] = 1 
where [44] = 0
update #Tempcorr
set  [45] = 1 
where [45] = 0
update #Tempcorr
set  [46] = 1 
where [46] = 0
update #Tempcorr
set  [47] = 1 
where [47] = 0
update #Tempcorr
set  [48] = 1 
where [48] = 0
update #Tempcorr
set  [49] = 1 
where [49] = 0
update #Tempcorr
set  [50] = 1 
where [50] = 0
update #Tempcorr
set  [51] = 1 
where [51] = 0
update #Tempcorr
set  [52] = 1 
where [52] = 0
update #Tempcorr
set  [53] = 1 
where [53] = 0
update #Tempcorr
set  [54] = 1 
where [54] = 0

go
select * into #Tempmax
from (
select [code] as code2,
	    round((sum([1])/Count([1]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 1)*100, 1,1) as [s1]
	  , round((sum([2])/Count([2]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 2)*100, 1,1) as [s2]
	  , round((sum([3])/Count([3]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 3)*100, 1,1) as [s3]
	  , round((sum([4])/Count([4]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 4)*100, 1,1) as [s4]
	  , round((sum([5])/Count([5]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 5)*100, 1,1) as [s5]
	  , round((sum([6])/Count([6]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 6)*100, 1,1) as [s6]
	  , round((sum([7])/Count([7]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 7)*100, 1,1) as [s7]
	  , round((sum([8])/Count([8]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 8)*100, 1,1) as [s8]
	  , round((sum([9])/Count([9]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 9)*100, 1,1) as [s9]
	  , round((sum([10])/Count([10]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 10)*100, 1,1) as [s10]
	  , round((sum([11])/Count([11]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 11)*100, 1,1) as [s11]
	  , round((sum([12])/Count([12]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 12)*100, 1,1) as [s12]
	  , round((sum([13])/Count([13]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 13)*100, 1,1) as [s13]
	  , round((sum([14])/Count([14]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 14)*100, 1,1) as [s14]
	  , round((sum([15])/Count([15]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 15)*100, 1,1) as [s15]
	  , round((sum([16])/Count([16]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 16)*100, 1,1) as [s16]
	  , round((sum([17])/Count([17]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 17)*100, 1,1) as [s17]
	  , round((sum([18])/Count([18]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 18)*100, 1,1) as [s18]
	  , round((sum([19])/Count([19]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 19)*100, 1,1) as [s19]
	  , round((sum([20])/Count([20]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 20)*100, 1,1) as [s20]
	  , round((sum([21])/Count([21]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 21)*100, 1,1) as [s21]
	  , round((sum([22])/Count([22]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 22)*100, 1,1) as [s22]
	  , round((sum([23])/Count([23]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 23)*100, 1,1) as [s23]
	  , round((sum([24])/Count([24]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 24)*100, 1,1) as [s24]
	  , round((sum([25])/Count([25]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 25)*100, 1,1) as [s25]
	  , round((sum([26])/Count([26]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 26)*100, 1,1) as [s26]
	  , round((sum([27])/Count([27]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 27)*100, 1,1) as [s27]
	  , round((sum([28])/Count([28]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 28)*100, 1,1) as [s28]
	  , round((sum([29])/Count([29]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 29)*100, 1,1) as [s29]
	  , round((sum([30])/Count([30]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 30)*100, 1,1) as [s30]
	  , round((sum([31])/Count([31]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 31)*100, 1,1) as [s31]
	  , round((sum([32])/Count([32]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 32)*100, 1,1) as [s32]
	  , round((sum([33])/Count([33]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 33)*100, 1,1) as [s33]
	  , round((sum([34])/Count([34]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 34)*100, 1,1) as [s34]
	  , round((sum([35])/Count([35]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 35)*100, 1,1) as [s35]
	  , round((sum([36])/Count([36]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 36)*100, 1,1) as [s36]
	  , round((sum([37])/Count([37]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 37)*100, 1,1) as [s37]
	  , round((sum([38])/Count([38]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 38)*100, 1,1) as [s38]
	  , round((sum([39])/Count([39]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 39.1)*100, 1,1) as [s39]
	  , round((sum([40])/Count([40]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 39.2)*100, 1,1) as [s40]
	  , round((sum([41])/Count([41]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 39.3)*100, 1,1) as [s41]
	  , round((sum([42])/Count([42]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 40.1)*100, 1,1) as [s42]
	  , round((sum([43])/Count([43]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 40.2)*100, 1,1) as [s43]
	  , round((sum([44])/Count([44]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 40.3)*100, 1,1) as [s44]
	  , round((sum([45])/Count([45]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 40.4)*100, 1,1) as [s45]
	  , round((sum([46])/Count([46]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 40.5)*100, 1,1) as [s46]
	  , round((sum([47])/Count([47]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 41)*100, 1,1) as [s47]
	  , round((sum([48])/Count([48]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 42)*100, 1,1) as [s48]
	  , round((sum([49])/Count([49]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 43.1)*100, 1,1) as [s49]
	  , round((sum([50])/Count([50]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 43.2)*100, 1,1) as [s50]
	  , round((sum([51])/Count([51]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 43.3)*100, 1,1) as [s51]
	  , round((sum([52])/Count([52]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 44.1)*100, 1,1) as [s52]
	  , round((sum([53])/Count([53]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 44.2)*100, 1,1) as [s53]
	  , round((sum([54])/Count([54]))/(select max from [specs].[Спецификация] where code_sub = 9 and num = 44.3)*100, 1,1) as [s54]
	 

from [dbo].[testCorrelationEng]
group by [code]
) as rara

select * from #Tempmax
go
select * into #all
from (
select * from #Tempmax as m join #Tempcorr as c
on m.code2 = c.code
) as r

select * from #all


IF OBJECT_ID(N'tempdb..#correlation1', N'U') is not null begin
	drop table #correlation1
end
select * into #correlation1
from #all
go
select * from #correlation1
IF OBJECT_ID(N'tempdb..#correlation', N'U') is not null begin
	drop table #correlation
end
 select * into #correlation
 from(
select [code] as code_ou
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =1) as [specific], 1 as [number],cast([1] as numeric(18,2)) as [corr],cast([s1] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [1]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =2) as [specific], 2 as [number],cast([2] as numeric(18,2)) as [corr],cast([s2] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [2]	   
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =3) as [specific], 3 as [number],cast([3] as numeric(18,2)) as [corr],cast([s3] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [3]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =4) as [specific], 4 as [number],cast([4] as numeric(18,2)) as [corr],cast([s4] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [4]	   
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =5) as [specific], 5 as [number],cast([5] as numeric(4,2)) as [corr],cast([s5] as numeric(7,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [5]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =6) as [specific], 6 as [number],cast([6] as numeric(18,2)) as [corr],cast([s6] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [6]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =7) as [specific], 7 as [number],cast([7] as numeric(18,2)) as [corr],cast([s7] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [7]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =8) as [specific], 8 as [number],cast([8] as numeric(18,2)) as [corr],cast([s8] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [8]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =9) as [specific], 9 as [number],cast([9] as numeric(18,2)) as [corr],cast([s9] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [9]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =10) as [specific], 10 as [number],cast([10] as numeric(18,2)) as [corr],cast([s10] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [10]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =11) as [specific], 11 as [number],cast([11] as numeric(18,2)) as [corr],cast([s11] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [11]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =12) as [specific], 12 as [number],cast([12] as numeric(18,2)) as [corr],cast([s12] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [12]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =13) as [specific], 13 as [number],cast([13] as numeric(18,2)) as [corr],cast([s13] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [13]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =14) as [specific], 14 as [number],cast([14] as numeric(18,2)) as [corr],cast([s14] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [14]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =15) as [specific], 15 as [number],cast([15] as numeric(18,2)) as [corr],cast([s15] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [15]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =16) as [specific], 16 as [number],cast([16] as numeric(18,2)) as [corr],cast([s16] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [16]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =17) as [specific], 17 as [number], cast([17] as numeric(18,2)) as [corr],cast([s17] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [17]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =18) as [specific], 18 as [number],cast([18] as numeric(18,2)) as [corr],cast([s18] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [18]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =19) as [specific], 19 as [number],cast([19] as numeric(18,2)) as [corr],cast([s19] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [19]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =20) as [specific], 20 as [number],cast([20] as numeric(18,2)) as [corr],cast([s20] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [20]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =21) as [specific], 21 as [number],cast([21] as numeric(18,2)) as [corr],cast([s21] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [21]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =22) as [specific], 22 as [number],cast([22] as numeric(18,2)) as [corr],cast([s22] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [22]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =23) as [specific], 23 as [number],cast([23] as numeric(18,2)) as [corr],cast([s23] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [23]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =24) as [specific], 24 as [number],cast([24] as numeric(18,2)) as [corr],cast([s24] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [24]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =25) as [specific], 25 as [number],cast([25] as numeric(18,2)) as [corr],cast([s25] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [25]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =26) as [specific], 26 as [number],cast([26] as numeric(18,2)) as [corr],cast([s26] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [26]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =27) as [specific], 27 as [number],cast([27] as numeric(18,2)) as [corr],cast([s27] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [27]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =28) as [specific], 28 as [number],cast([28] as numeric(18,2)) as [corr],cast([s28] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [28]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =29) as [specific], 29 as [number],cast([29] as numeric(18,2)) as [corr],cast([s29] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [29]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =30) as [specific], 30 as [number],cast([30] as numeric(18,2)) as [corr],cast([s30] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [30]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =31) as [specific], 31 as [number],cast([31] as numeric(18,2)) as [corr],cast([s31] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [31]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =32) as [specific], 32 as [number],cast([32] as numeric(18,2)) as [corr],cast([s32] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [32]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =33) as [specific], 33 as [number],cast([33] as numeric(18,2)) as [corr],cast([s33] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [33]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =34) as [specific], 34 as [number],cast([34] as numeric(18,2)) as [corr],cast([s34] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [34]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =35) as [specific], 35 as [number],cast([35] as numeric(18,2)) as [corr],cast([s35] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [35]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =36) as [specific], 36 as [number],cast([36] as numeric(18,2)) as [corr],cast([s36] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [36]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =37) as [specific], 37 as [number], cast([37] as numeric(18,2)) as [corr],cast([s37] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [37]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =38) as [specific], 38 as [number],cast([38] as numeric(18,2)) as [corr],cast([s38] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [38]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =39.1) as [specific], 39.1 as [number],cast([39] as numeric(18,2)) as [corr],cast([s39] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [39]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =39.2) as [specific], 39.2 as [number],cast([40] as numeric(18,2)) as [corr],cast([s40] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [40]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =39.3) as [specific], 39.3 as [number],cast([41] as numeric(18,2)) as [corr],cast([s41] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [41]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =40.1) as [specific], 40.1 as [number],cast([42] as numeric(18,2)) as [corr],cast([s42] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [42]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =40.2) as [specific], 40.2 as [number],cast([43] as numeric(18,2)) as [corr],cast([s43] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [43]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =40.3) as [specific], 40.3 as [number],cast([44] as numeric(18,2)) as [corr],cast([s44] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [44]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =40.4) as [specific], 40.4 as [number],cast([45] as numeric(18,2)) as [corr],cast([s45] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [45]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =40.5) as [specific], 40.5 as [number],cast([46] as numeric(18,2)) as [corr],cast([s46] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [46]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =41) as [specific], 41 as [number],cast([47] as numeric(18,2)) as [corr],cast([s47] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [47]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =42) as [specific], 42 as [number],cast([48] as numeric(18,2)) as [corr],cast([s48] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [48]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =43.1) as [specific], 43.1 as [number],cast([49] as numeric(18,2)) as [corr],cast([s49] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [49]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =43.2) as [specific], 43.2 as [number],cast([50] as numeric(18,2)) as [corr],cast([s50] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [50]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =43.3) as [specific], 43.3 as [number],cast([51] as numeric(18,2)) as [corr],cast([s51] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [51]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =44.1) as [specific], 44.1 as [number],cast([52] as numeric(18,2)) as [corr],cast([s52] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [52]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =44.2) as [specific], 44.2 as [number],cast([53] as numeric(18,2)) as [corr],cast([s53] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [53]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 9 and num =44.3) as [specific], 44.3 as [number],cast([54] as numeric(18,2)) as [corr],cast([s54] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [54]


from #correlation1
) as df
go
select * from #correlation
go
insert into correlation
select [code_ou] as 'code_ou',
		'Английский язык' as name_sub,
		2020 as year  ,
		9 as code_sub,
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
		  [19]+ ','+
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
		  [36]+ ',' +
		  [37]+ ',' +
		  [38]+ ',' +
		  [39]+ ',' +
		  [40]+ ',' +
		  [41]+ ',' +
		  [42]+ ',' +
		  [43]+ ',' +
		  [44]+ ',' +
		  [45]+ ',' +
		  [46]+ ',' +
		  [47]+ ',' +
		  [48]+ ',' +
		  [49]+ ',' +
		  [50]+ ',' +
		  [51]+ ',' +
		  [52]+ ',' +
		  [53]+ ',' +
		  [54]

		  + ']' as corr1
from #correlation


