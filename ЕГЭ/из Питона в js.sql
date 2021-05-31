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
from [dbo].[lit]
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
--update #Tempcorr
--set  [32] = 1 
--where [32] = 0
--update #Tempcorr
--set  [33] = 1 
--where [33] = 0
--update #Tempcorr
--set  [34] = 1 
--where [34] = 0
--update #Tempcorr
--set  [35] = 1 
--where [35] = 0
go
select * into #Tempmax
from (
select [code] as code2,
	    round((sum([1])/Count([1]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 1)*100, 1,1) as [s1]
	  , round((sum([2])/Count([2]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 2)*100, 1,1) as [s2]
	  , round((sum([3])/Count([3]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 3)*100, 1,1) as [s3]
	  , round((sum([4])/Count([4]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 4)*100, 1,1) as [s4]
	  , round((sum([5])/Count([5]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 5)*100, 1,1) as [s5]
	  , round((sum([6])/Count([6]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 6)*100, 1,1) as [s6]
	  , round((sum([7])/Count([7]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 7)*100, 1,1) as [s7]
	  , round((sum([8])/Count([8]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 8.1)*100, 1,1) as [s8]
	  , round((sum([9])/Count([9]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 8.2)*100, 1,1) as [s9]
	  , round((sum([10])/Count([10]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 8.3)*100, 1,1) as [s10]
	  , round((sum([11])/Count([11]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 9.1)*100, 1,1) as [s11]
	  , round((sum([12])/Count([12]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 9.2)*100, 1,1) as [s12]
	  , round((sum([13])/Count([13]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 9.3)*100, 1,1) as [s13]
	  , round((sum([14])/Count([14]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 9.4)*100, 1,1) as [s14]
	  , round((sum([15])/Count([15]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 10)*100, 1,1) as [s15]
	  , round((sum([16])/Count([16]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 11)*100, 1,1) as [s16]
	  , round((sum([17])/Count([17]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 12)*100, 1,1) as [s17]
	  , round((sum([18])/Count([18]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 13)*100, 1,1) as [s18]
	  , round((sum([19])/Count([19]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 14)*100, 1,1) as [s19]
	  , round((sum([20])/Count([20]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 15.1)*100, 1,1) as [s20]
	  , round((sum([21])/Count([21]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 15.2)*100, 1,1) as [s21]
	  , round((sum([22])/Count([22]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 15.3)*100, 1,1) as [s22]
	  , round((sum([23])/Count([23]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 16.1)*100, 1,1) as [s23]
	  , round((sum([24])/Count([24]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 16.2)*100, 1,1) as [s24]
	  , round((sum([25])/Count([25]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 16.3)*100, 1,1) as [s25]
	  , round((sum([26])/Count([26]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 16.4)*100, 1,1) as [s26]
	  , round((sum([27])/Count([27]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 17.1)*100, 1,1) as [s27]
	  , round((sum([28])/Count([28]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 17.2)*100, 1,1) as [s28]
	  , round((sum([29])/Count([29]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 17.3)*100, 1,1) as [s29]
	  , round((sum([30])/Count([30]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 17.4)*100, 1,1) as [s30]
	  , round((sum([31])/Count([31]))/(select max from [specs].[Спецификация] where code_sub = 18 and num = 17.5)*100, 1,1) as [s31]
	  --, round((sum([32])/Count([32]))/(select max from [specs].[Спецификация] where code_sub = 8 and num = 32)*100, 1,1) as [s32]
	  --, round((sum([33])/Count([33]))/(select max from [specs].[Спецификация] where code_sub = 8 and num = 33)*100, 1,1) as [s33]
	  --, round((sum([34])/Count([34]))/(select max from [specs].[Спецификация] where code_sub = 8 and num = 34)*100, 1,1) as [s34]
	  --, round((sum([35])/Count([35]))/(select max from [specs].[Спецификация] where code_sub = 4 and num = 35)*100, 1,1) as [s35]

from [dbo].[testCorrelationLit]
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
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =1) as [specific], 1 as [number],cast([1] as numeric(18,2)) as [corr],cast([s1] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [1]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =2) as [specific], 2 as [number],cast([2] as numeric(18,2)) as [corr],cast([s2] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [2]	   
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =3) as [specific], 3 as [number],cast([3] as numeric(18,2)) as [corr],cast([s3] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [3]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =4) as [specific], 4 as [number],cast([4] as numeric(18,2)) as [corr],cast([s4] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [4]	   
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =5) as [specific], 5 as [number],cast([5] as numeric(4,2)) as [corr],cast([s5] as numeric(7,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [5]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =6) as [specific], 6 as [number],cast([6] as numeric(18,2)) as [corr],cast([s6] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [6]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =7) as [specific], 7 as [number],cast([7] as numeric(18,2)) as [corr],cast([s7] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [7]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =8.1) as [specific], 8 as [number],cast([8] as numeric(18,2)) as [corr],cast([s8] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [8]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =8.2) as [specific], 9 as [number],cast([9] as numeric(18,2)) as [corr],cast([s9] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [9]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =8.3) as [specific], 10 as [number],cast([10] as numeric(18,2)) as [corr],cast([s10] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [10]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =9.1) as [specific], 11 as [number],cast([11] as numeric(18,2)) as [corr],cast([s11] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [11]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =9.2) as [specific], 12 as [number],cast([12] as numeric(18,2)) as [corr],cast([s12] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [12]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =9.3) as [specific], 13 as [number],cast([13] as numeric(18,2)) as [corr],cast([s13] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [13]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =9.4) as [specific], 14 as [number],cast([14] as numeric(18,2)) as [corr],cast([s14] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [14]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =10) as [specific], 15 as [number],cast([15] as numeric(18,2)) as [corr],cast([s15] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [15]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =11) as [specific], 16 as [number],cast([16] as numeric(18,2)) as [corr],cast([s16] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [16]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =12) as [specific], 17 as [number], cast([17] as numeric(18,2)) as [corr],cast([s17] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [17]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =13) as [specific], 18 as [number],cast([18] as numeric(18,2)) as [corr],cast([s18] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [18]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =14) as [specific], 19 as [number],cast([19] as numeric(18,2)) as [corr],cast([s19] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [19]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =15.1) as [specific], 20 as [number],cast([20] as numeric(18,2)) as [corr],cast([s20] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [20]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =15.2) as [specific], 21 as [number],cast([21] as numeric(18,2)) as [corr],cast([s21] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [21]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =15.3) as [specific], 22 as [number],cast([22] as numeric(18,2)) as [corr],cast([s22] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [22]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =16.1) as [specific], 23 as [number],cast([23] as numeric(18,2)) as [corr],cast([s23] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [23]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =16.2) as [specific], 24 as [number],cast([24] as numeric(18,2)) as [corr],cast([s24] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [24]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =16.3) as [specific], 25 as [number],cast([25] as numeric(18,2)) as [corr],cast([s25] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [25]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =16.4) as [specific], 26 as [number],cast([26] as numeric(18,2)) as [corr],cast([s26] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [26]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =17.1) as [specific], 27 as [number],cast([27] as numeric(18,2)) as [corr],cast([s27] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [27]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =17.2) as [specific], 28 as [number],cast([28] as numeric(18,2)) as [corr],cast([s28] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [28]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =17.3) as [specific], 29 as [number],cast([29] as numeric(18,2)) as [corr],cast([s29] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [29]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =17.4) as [specific], 30 as [number],cast([30] as numeric(18,2)) as [corr],cast([s30] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [30]
	   ,(select (select name from [specs].[Спецификация] where code_sub = 18 and num =17.5) as [specific], 31 as [number],cast([31] as numeric(18,2)) as [corr],cast([s31] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [31]
	   --,(select (select name from [specs].[Спецификация] where code_sub = 8 and num =32) as [specific], 32 as [number],cast([32] as numeric(18,2)) as [corr],cast([s32] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [32]
	   --,(select (select name from [specs].[Спецификация] where code_sub = 8 and num =33) as [specific], 33 as [number],cast([33] as numeric(18,2)) as [corr],cast([s33] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [33]
	   --,(select (select name from [specs].[Спецификация] where code_sub = 8 and num =34) as [specific], 34 as [number],cast([34] as numeric(18,2)) as [corr],cast([s34] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [34]
	   --,(select (select name from [specs].[Спецификация] where code_sub = 5 and num =35) as [specific], 35 as [number],cast([35] as numeric(18,2)) as [corr],cast([s35] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [35]


from #correlation1
) as df
go
select * from #correlation
go
insert into correlation
select [code_ou] as 'code_ou',
		'Литература' as name_sub,
		2020 as year  ,
		18 as code_sub,
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
		  [31]
		  --[32]+ ',' +
		  --[33]+ ',' +
		  --[34]+ ',' +
		  --[35]+ ',' +
		  + ']' as corr1
from #correlation


