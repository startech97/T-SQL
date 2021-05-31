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
from [dbo].[correlat]


--select * into #Tempcorr
--from(
--select	'1' as code1,
--		sum(isnull(SQUARE([1]),0)) as [1], 
--		sum(isnull(SQUARE([2]),0)) as [2],
--		sum(isnull(SQUARE([3]),0)) as [3], 
--		sum(isnull(SQUARE([4]),0)) as [4],
--		sum(isnull(SQUARE([5]),0)) as [5], 
--		sum(isnull(SQUARE([6]),0)) as [6],
--		sum(isnull(SQUARE([7]),0)) as [7], 
--		sum(isnull(SQUARE([8]),0)) as [8],
--		sum(isnull(SQUARE([9]),0)) as [9], 
--		sum(isnull(SQUARE([10]),0)) as [10],
--		sum(isnull(SQUARE([11]),0)) as [11], 
--		sum(isnull(SQUARE([12]),0)) as [12],
--		sum(isnull(SQUARE([13]),0)) as [13], 
--		sum(isnull(SQUARE([14]),0)) as [14],
--		sum(isnull(SQUARE([15]),0)) as [15], 
--		sum(isnull(SQUARE([16]),0)) as [16],
--		sum(isnull(SQUARE([17]),0)) as [17], 
--		sum(isnull(SQUARE([18]),0)) as [18],
--		sum(isnull(SQUARE([19]),0)) as [19], 
--		sum(isnull(SQUARE([20]),0)) as [20],
--		sum(isnull(SQUARE([21]),0)) as [21], 
--		sum(isnull(SQUARE([22]),0)) as [22],
--		sum(isnull(SQUARE([23]),0)) as [23], 
--		sum(isnull(SQUARE([24]),0)) as [24],
--		sum(isnull(SQUARE([25]),0)) as [25], 
--		sum(isnull(SQUARE([26]),0)) as [26],
--		sum(isnull(SQUARE([27]),0)) as [27], 
--		sum(isnull(SQUARE([28]),0)) as [28],
--		sum(isnull(SQUARE([29]),0)) as [29], 
--		sum(isnull(SQUARE([30]),0)) as [30],
--		sum(isnull(SQUARE([31]),0)) as [31], 
--		sum(isnull(SQUARE([32]),0)) as [32],
--		sum(isnull(SQUARE([33]),0)) as [33], 
--		sum(isnull(SQUARE([34]),0)) as [34],
--		sum(isnull(SQUARE([35]),0)) as [35], 
--		sum(isnull(SQUARE([36]),0)) as [36],
--		sum(isnull(SQUARE([37]),0)) as [37], 
--		sum(isnull(SQUARE([38]),0)) as [38]
--from [dbo].[corr1]
--) as r

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
	  , round((sum([8])/Count([8]))/5*100, 1,1) as [s8]
	  , round((sum([9])/Count([9]))/1*100, 1,1) as [s9]
	  , round((sum([10])/Count([10]))/1*100, 1,1) as [s10]
	  , round((sum([11])/Count([11]))/1*100, 1,1) as [s11]
	  , round((sum([12])/Count([12]))/1*100, 1,1) as [s12]
	  , round((sum([13])/Count([13]))/1*100, 1,1) as [s13]
	  , round((sum([14])/Count([14]))/1*100, 1,1) as [s14]
	  , round((sum([15])/Count([15]))/1*100, 1,1) as [s15]
	  , round((sum([16])/Count([16]))/2*100, 1,1) as [s16]
	  , round((sum([17])/Count([17]))/1*100, 1,1) as [s17]
	  , round((sum([18])/Count([18]))/1*100, 1,1) as [s18]
	  , round((sum([19])/Count([19]))/1*100, 1,1) as [s19]
	  , round((sum([20])/Count([20]))/1*100, 1,1) as [s20]
	  , round((sum([21])/Count([21]))/1*100, 1,1) as [s21]
	  , round((sum([22])/Count([22]))/1*100, 1,1) as [s22]
	  , round((sum([23])/Count([23]))/1*100, 1,1) as [s23]
	  , round((sum([24])/Count([24]))/1*100, 1,1) as [s24]
	  , round((sum([25])/Count([25]))/1*100, 1,1) as [s25]
	  , round((sum([26])/Count([26]))/4*100, 1,1) as [s26]
	  , round((sum([27])/Count([27]))/1*100, 1,1) as [s27]
	  , round((sum([28])/Count([28]))/5*100, 1,1) as [s28]
	  , round((sum([29])/Count([29]))/1*100, 1,1) as [s29]
	  , round((sum([30])/Count([30]))/1*100, 1,1) as [s30]
	  , round((sum([31])/Count([31]))/2*100, 1,1) as [s31]
	  , round((sum([32])/Count([32]))/2*100, 1,1) as [s32]
	  , round((sum([33])/Count([33]))/3*100, 1,1) as [s33]
	  , round((sum([34])/Count([34]))/3*100, 1,1) as [s34]
	  , round((sum([35])/Count([35]))/2*100, 1,1) as [s35]
	  , round((sum([36])/Count([36]))/2*100, 1,1) as [s36]
	  , round((sum([37])/Count([37]))/1*100, 1,1) as [s37]
	  , round((sum([38])/Count([38]))/1*100, 1,1) as [s38]
from [dbo].[testCorrelation]
group by [code]
) as r

select * from #Tempmax
go
select * into #all
from (
select * from #Tempmax as m join #Tempcorr as c
on m.code2 = c.code
) as r

select * from #all


IF OBJECT_ID(N'tempdb..#correlation', N'U') is not null begin
	drop table #correlation1
end
select * into #correlation1
from #all
select * from #correlation1
IF OBJECT_ID(N'tempdb..#correlation', N'U') is not null begin
	drop table #correlation
end
 select * into #correlation
 from(
select [code] as code_ou,
		(select 'Информационная обработка письменных текстов различных стилей и жанров' as [specific], 1 as [number],cast([1] as numeric(18,2)) as [corr],cast([s1] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [1]
	   ,(select 'Средства связи предложений  в тексте. Отбор языковых средств в тексте в зависимости от темы, цели, адресата и ситуации общения' as [specific], 2 as [number],cast([2] as numeric(18,2)) as [corr],cast([s2] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [2]	   
	   ,(select 'Лексическое значение слова' as [specific], 3 as [number],cast([3] as numeric(18,2)) as [corr],cast([s3] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [3]
	   ,(select 'Орфоэпические нормы (постановка ударения)' as [specific], 4 as [number],cast([4] as numeric(18,2)) as [corr],cast([s4] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [4]	   
	   ,(select 'Лексические нормы (употребление слова  в соответствии с точным лексическим значением  и требованием лексической сочетаемости)' as [specific], 5 as [number],cast([5] as numeric(4,2)) as [corr],cast([s5] as numeric(7,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [5]
	   ,(select 'Лексические нормы' as [specific], 6 as [number],cast([6] as numeric(18,2)) as [corr],cast([s6] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [6]
	   ,(select 'Морфологические нормы (образование форм слова)' as [specific], 7 as [number],cast([7] as numeric(18,2)) as [corr],cast([s7] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [7]
	   ,(select 'Синтаксические нормы. Нормы согласования. Нормы управления' as [specific], 8 as [number],cast([8] as numeric(18,2)) as [corr],cast([s8] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [8]
	   ,(select 'Правописание корней' as [specific], 9 as [number],cast([9] as numeric(18,2)) as [corr],cast([s9] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [9]
	   ,(select 'Правописание приставок' as [specific], 10 as [number],cast([10] as numeric(18,2)) as [corr],cast([s10] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [10]
	   ,(select 'Правописание суффиксов различных частей речи  (кроме -Н-/-НН-)' as [specific], 11 as [number],cast([11] as numeric(18,2)) as [corr],cast([s11] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [11]
	   ,(select 'Правописание личных окончаний глаголов и суффиксов причастий' as [specific], 12 as [number],cast([12] as numeric(18,2)) as [corr],cast([s12] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [12]
	   ,(select 'Правописание НЕ и НИ' as [specific], 13 as [number],cast([13] as numeric(18,2)) as [corr],cast([s13] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [13]
	   ,(select 'Слитное, дефисное, раздельное написание слов' as [specific], 14 as [number],cast([14] as numeric(18,2)) as [corr],cast([s14] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [14]
	   ,(select 'Правописание -Н- и -НН-  в различных частях речи' as [specific], 15 as [number],cast([15] as numeric(18,2)) as [corr],cast([s15] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [15]
	   ,(select 'Знаки препинания в простом осложнённом предложении (с однородными членами). Пунктуация в сложносочинённом предложении и простом предложении с однородными членами' as [specific], 16 as [number],cast([16] as numeric(18,2)) as [corr],cast([s16] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [16]
	   ,(select 'Знаки препинания  в предложениях  с обособленными членами (определениями, обстоятельствами, приложениями, дополнениями)' as [specific], 17 as [number], cast([17] as numeric(18,2)) as [corr],cast([s17] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [17]
	   ,(select 'Знаки препинания  в предложениях со словами  и конструкциями, грамматически не связанными с членами предложения' as [specific], 18 as [number],cast([18] as numeric(18,2)) as [corr],cast([s18] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [18]
	   ,(select 'Знаки препинания  в сложноподчинённом предложении' as [specific], 19 as [number],cast([19] as numeric(18,2)) as [corr],cast([s19] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [19]
	   ,(select 'Знаки препинания в сложном предложении с разными видами связи' as [specific], 20 as [number],cast([20] as numeric(18,2)) as [corr],cast([s20] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [20]
	   ,(select 'Пунктуационный анализ' as [specific], 21 as [number],cast([21] as numeric(18,2)) as [corr],cast([s21] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [21]
	   ,(select 'Текст как речевое произведение. Смысловая и композиционная целостность текста' as [specific], 22 as [number],cast([22] as numeric(18,2)) as [corr],cast([s22] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [22]
	   ,(select 'Функционально-смысловые типы речи' as [specific], 23 as [number],cast([23] as numeric(18,2)) as [corr],cast([s23] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [23]
	   ,(select 'Лексическое значение слова. Синонимы. Антонимы. Омонимы. Фразеологические обороты. Группы слов по происхождению  и употреблению' as [specific], 24 as [number],cast([24] as numeric(18,2)) as [corr],cast([s24] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [24]
	   ,(select 'Средства связи предложений  в тексте' as [specific], 25 as [number],cast([25] as numeric(18,2)) as [corr],cast([s25] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [25]
	   ,(select 'Речь. Языковые средства выразительности' as [specific], 26 as [number],cast([26] as numeric(18,2)) as [corr],cast([s26] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [26]
	   ,(select 'Формулировка проблем исходного текста' as [specific], 27 as [number],cast([27] as numeric(18,2)) as [corr],cast([s27] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [27]
	   ,(select 'Комментарий к сформулированной проблеме исходного текста' as [specific], 28 as [number],cast([28] as numeric(18,2)) as [corr],cast([s28] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [28]
	   ,(select 'Отражение позиции автора исходного текста' as [specific], 29 as [number],cast([29] as numeric(18,2)) as [corr],cast([s29] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [29]
	   ,(select 'Аргументация экзаменуемым собственного мнения о проблеме' as [specific], 30 as [number],cast([30] as numeric(18,2)) as [corr],cast([s30] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [30]
	   ,(select 'Смысловая цельность, речевая связность и последовательность изложения' as [specific], 31 as [number],cast([31] as numeric(18,2)) as [corr],cast([s31] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [31]
	   ,(select 'Точность и выразительность речи' as [specific], 32 as [number],cast([32] as numeric(18,2)) as [corr],cast([s32] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [32]
	   ,(select 'Соблюдение орфографических норм' as [specific], 33 as [number],cast([33] as numeric(18,2)) as [corr],cast([s33] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [33]
	   ,(select 'Соблюдение пунктуационных норм' as [specific], 34 as [number],cast([34] as numeric(18,2)) as [corr],cast([s34] as numeric(18,2)) as [max] from #all where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [34]
	   ,(select 'Соблюдение языковых норм' as [specific], 35 as [number],cast([35] as numeric(18,2)) as [corr],cast([s35] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [35]
	   ,(select 'Соблюдение речевых норм' as [specific], 36 as [number],cast([36] as numeric(18,2)) as [corr],cast([s36] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [36]
	   ,(select 'Соблюдение этических норм' as [specific], 37 as [number],cast([37] as numeric(18,2)) as [corr],cast([s37] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code] for json path, WITHOUT_ARRAY_WRAPPER ) as [37]
	   ,(select 'Соблюдение фактологической точности в фоновом материале' as [specific], 38 as [number],cast([38] as numeric(18,2)) as [corr],cast([s38] as numeric(18,2)) as [max] from #all  where [#correlation1].[code] = [#all].[code]  for json path, WITHOUT_ARRAY_WRAPPER ) as [38]

from #correlation1
) as df
select * from #correlation
select * into correlation
from(
select [code_ou] as 'code_ou',
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
		  [35]+ ',' +
		  [36]+ ',' +
		  [37]+ ',' +
		  [38] + ']' as corr1
from #correlation
) as re


