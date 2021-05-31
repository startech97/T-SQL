IF OBJECT_ID(N'tempdb..#TempEge', N'U') is not null begin
	drop table #TempEge
end
go
with MyTable( [code_sub],[name_sub], [year], [code_ou], 
			  [name_ou],[type_ou],[district],[cluster],[part1],[part2])-----
as
	(select   [��� ��������],'����������',Year([���� ��������]),[��� ��], 
			  [������������ ��],[��� ��],[������������� �����],[�������],[TestResultB],[TestResultC]--

	from   [dbo].[ege2020]
	where  [��� ��������] = 18
	)

select * into #TempEge
from MyTable
select * from #TempEge
go

alter table #TempEge add [1] float,[2] float,[3]float,[4]float,[5]float,
							[6]float,[7]float,[8]float,[9]float,[10]float,
							[11]float,[12]float,[13]float,[14]float,[15]float,
							[16]float,[17]float
							,[s1] float,[s2] float,[s3]float,[s4]float,[s5]float,
							[s6]float,[s7]float,[s8]float,[s9]float,[s10]float,
							[s11]float,[s12]float,[s13]float,[s14]float
go 
update #TempEge
set [1] = substring(part1,1,1),[2] = substring(part1,2,1),[3] = substring(part1,3,1),
	[4] = substring(part1,4,1),[5] = substring(part1,5,1),[6] = substring(part1,6,1),
	[7] = substring(part1,7,1),[8] = substring(part2,1,1),[9] = substring(part2,2,1),
	[10] = substring(part2,3,1),[11] = substring(part2,4,1),[12] = substring(part2,5,1),
	[13] = substring(part2,6,1),[14] = substring(part2,7,1),[15] = substring(part1,8,1),
	[16] = substring(part1,9,1),[17] = substring(part1,10,1),
	[s1] = substring(part1,11,1),[s2] = substring(part1,12,1),[s3] = substring(part2,8,1),
	[s4] = substring(part2,9,1),[s5] = substring(part2,10,1),[s6] = substring(part2,11,1),
	[s7] = substring(part2,12,1),[s8] = substring(part2,13,1),[s9] = substring(part2,14,1),
	[s10] = substring(part2,15,1),[s11] = substring(part2,16,1),[s12] = substring(part2,17,1),
	[s13] = substring(part2,18,1),[s14] = substring(part2,19,1)

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
,[c17],[sc1],[sc2],[sc3],[sc4],[sc5],[sc6],[sc7],[sc8],[sc9],[sc10],[sc11],[sc12],[sc13],[sc14]) 
as (select [cluster]
	,round((sum([1])/Count([1]))/1*100, 1,1) as [1]
	  , round((sum([2])/Count([2]))/1*100, 1,1) as [2]
	  , round((sum([3])/Count([3]))/1*100, 1,1) as [3]
	  , round((sum([4])/Count([4]))/1*100, 1,1) as [4]
	  , round((sum([5])/Count([5]))/1*100, 1,1) as [5]
	  , round((sum([6])/Count([6]))/1*100, 1,1) as [6]
	  , round((sum([7])/Count([7]))/1*100, 1,1) as [7]
	  , round((sum([8])/Count([8]))/2*100, 1,1) as [8]
	  , round((sum([9])/Count([9]))/2*100, 1,1) as [9]
	  , round((sum([10])/Count([10]))/2*100, 1,1) as [10]
	  , round((sum([11])/Count([11]))/2*100, 1,1) as [11]
	  , round((sum([12])/Count([12]))/2*100, 1,1) as [12]
	  , round((sum([13])/Count([13]))/4*100, 1,1) as [13]
	  , round((sum([14])/Count([14]))/2*100, 1,1) as [14]
	  , round((sum([15])/Count([15]))/1*100, 1,1) as [15]
	  , round((sum([16])/Count([16]))/1*100, 1,1) as [16]
	  , round((sum([17])/Count([17]))/1*100, 1,1) as [17]

	  ,round((sum([s1])/Count([s1]))/1*100, 1,1) as [s1]
	  , round((sum([s2])/Count([s2]))/1*100, 1,1) as [s2]
	  , round((sum([s3])/Count([s3]))/2*100, 1,1) as [s3]
	  , round((sum([s4])/Count([s4]))/2*100, 1,1) as [s4]
	  , round((sum([s5])/Count([s5]))/2*100, 1,1) as [s5]
	  , round((sum([s6])/Count([s6]))/2*100, 1,1) as [s6]
	  , round((sum([s7])/Count([s7]))/2*100, 1,1) as [s7]
	  , round((sum([s8])/Count([s8]))/4*100, 1,1) as [s8]
	  , round((sum([s9])/Count([s9]))/2*100, 1,1) as [s9]
	  , round((sum([s10])/Count([s10]))/3*100, 1,1) as [s10]
	  , round((sum([s11])/Count([s11]))/3*100, 1,1) as [s11]
	  , round((sum([s12])/Count([s12]))/2*100, 1,1) as [s12]
	  , round((sum([s13])/Count([s13]))/3*100, 1,1) as [s13]
	  , round((sum([s14])/Count([s14]))/3*100, 1,1) as [s14]
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
,[r17],[sr1],[sr2],[sr3],[sr4],[sr5],[sr6],[sr7],[sr8],[sr9],[sr10],[sr11],[sr12],[sr13],[sr14]) 
as (select
		round((sum([1])/Count([1]))/1*100, 1,1) as [1]
	  , round((sum([2])/Count([2]))/1*100, 1,1) as [2]
	  , round((sum([3])/Count([3]))/1*100, 1,1) as [3]
	  , round((sum([4])/Count([4]))/1*100, 1,1) as [4]
	  , round((sum([5])/Count([5]))/1*100, 1,1) as [5]
	  , round((sum([6])/Count([6]))/1*100, 1,1) as [6]
	  , round((sum([7])/Count([7]))/1*100, 1,1) as [7]
	  , round((sum([8])/Count([8]))/2*100, 1,1) as [8]
	  , round((sum([9])/Count([9]))/2*100, 1,1) as [9]
	  , round((sum([10])/Count([10]))/2*100, 1,1) as [10]
	  , round((sum([11])/Count([11]))/2*100, 1,1) as [11]
	  , round((sum([12])/Count([12]))/2*100, 1,1) as [12]
	  , round((sum([13])/Count([13]))/4*100, 1,1) as [13]
	  , round((sum([14])/Count([14]))/2*100, 1,1) as [14]
	  , round((sum([15])/Count([15]))/1*100, 1,1) as [15]
	  , round((sum([16])/Count([16]))/1*100, 1,1) as [16]
	  , round((sum([17])/Count([17]))/1*100, 1,1) as [17]

	  ,round((sum([s1])/Count([s1]))/1*100, 1,1) as [s1]
	  , round((sum([s2])/Count([s2]))/1*100, 1,1) as [s2]
	  , round((sum([s3])/Count([s3]))/2*100, 1,1) as [s3]
	  , round((sum([s4])/Count([s4]))/2*100, 1,1) as [s4]
	  , round((sum([s5])/Count([s5]))/2*100, 1,1) as [s5]
	  , round((sum([s6])/Count([s6]))/2*100, 1,1) as [s6]
	  , round((sum([s7])/Count([s7]))/2*100, 1,1) as [s7]
	  , round((sum([s8])/Count([s8]))/4*100, 1,1) as [s8]
	  , round((sum([s9])/Count([s9]))/2*100, 1,1) as [s9]
	  , round((sum([s10])/Count([s10]))/3*100, 1,1) as [s10]
	  , round((sum([s11])/Count([s11]))/3*100, 1,1) as [s11]
	  , round((sum([s12])/Count([s12]))/2*100, 1,1) as [s12]
	  , round((sum([s13])/Count([s13]))/3*100, 1,1) as [s13]
	  , round((sum([s14])/Count([s14]))/3*100, 1,1) as [s14]
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
		, round((sum([1])/Count([1]))/1*100, 1,1) as [s1]
	  , round((sum([2])/Count([2]))/1*100, 1,1) as [s2]
	  , round((sum([3])/Count([3]))/1*100, 1,1) as [s3]
	  , round((sum([4])/Count([4]))/1*100, 1,1) as [s4]
	  , round((sum([5])/Count([5]))/1*100, 1,1) as [s5]
	  , round((sum([6])/Count([6]))/1*100, 1,1) as [s6]
	  , round((sum([7])/Count([7]))/1*100, 1,1) as [s7]
	  , round((sum([8])/Count([8]))/2*100, 1,1) as [s8]
	  , round((sum([9])/Count([9]))/2*100, 1,1) as [s9]
	  , round((sum([10])/Count([10]))/2*100, 1,1) as [s10]
	  , round((sum([11])/Count([11]))/2*100, 1,1) as [s11]
	  , round((sum([12])/Count([12]))/2*100, 1,1) as [s12]
	  , round((sum([13])/Count([13]))/4*100, 1,1) as [s13]
	  , round((sum([14])/Count([14]))/2*100, 1,1) as [s14]
	  , round((sum([15])/Count([15]))/1*100, 1,1) as [s15]
	  , round((sum([16])/Count([16]))/1*100, 1,1) as [s16]
	  , round((sum([17])/Count([17]))/1*100, 1,1) as [s17]

	  , round((sum([s1])/Count([s1]))/1*100, 1,1) as [ss1]
	  , round((sum([s2])/Count([s2]))/1*100, 1,1) as [ss2]
	  , round((sum([s3])/Count([s3]))/2*100, 1,1) as [ss3]
	  , round((sum([s4])/Count([s4]))/2*100, 1,1) as [ss4]
	  , round((sum([s5])/Count([s5]))/2*100, 1,1) as [ss5]
	  , round((sum([s6])/Count([s6]))/2*100, 1,1) as [ss6]
	  , round((sum([s7])/Count([s7]))/2*100, 1,1) as [ss7]
	  , round((sum([s8])/Count([s8]))/4*100, 1,1) as [ss8]
	  , round((sum([s9])/Count([s9]))/2*100, 1,1) as [ss9]
	  , round((sum([s10])/Count([s10]))/3*100, 1,1) as [ss10]
	  , round((sum([s11])/Count([s11]))/3*100, 1,1) as [ss11]
	  , round((sum([s12])/Count([s12]))/2*100, 1,1) as [ss12]
	  , round((sum([s13])/Count([s13]))/3*100, 1,1) as [ss13]
	  , round((sum([s14])/Count([s14]))/3*100, 1,1) as [ss14]

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
		,(select '�������� ������������ �����������' as specific, CONVERT(NUMERIC(5,1), ROUND([s1], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c1], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r1], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [1]
		,(select '������� ��������� ����������� �����'as specific,CONVERT(NUMERIC(5,1), ROUND([s2], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c2], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r2], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [2]
		,(select '�������� ��������� ��������� � ���� ����������'as specific,CONVERT(NUMERIC(5,1), ROUND([s3], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c3], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r3], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [3]
		,(select '������������ ���������� � ������'as specific,CONVERT(NUMERIC(5,1), ROUND([s4], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c4], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r4], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [4]
		,(select '�������� �������������� �����'as specific,CONVERT(NUMERIC(5,1), ROUND([s5], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c5], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r5], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [5]
		,(select '��� ���������� ������, � �������'as specific,CONVERT(NUMERIC(5,1), ROUND([s6], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c6], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r6], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [6]
		,(select '������ ������ ��������� ����� �����������'as specific,CONVERT(NUMERIC(5,1), ROUND([s7], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c7], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r7], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [7]
		,(select '������������ ������ �������'as specific,CONVERT(NUMERIC(5,1), ROUND([s8], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c8], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r8], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [8]
		,(select '����������� ������ ������������ ��� ������������'as specific,CONVERT(NUMERIC(5,1), ROUND([s9], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c9], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r9], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [9]
		,(select '���������� � ���������� ������� ����'as specific,CONVERT(NUMERIC(5,1), ROUND([s10], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c10], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r10], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [10]
		,(select '������������� ������� ���������� ������������ � ������������ �������'as specific,CONVERT(NUMERIC(5,1), ROUND([s11], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c11], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r11], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [11]
		,(select '������������� ������� ���������� ������������ � ������������ �������'as specific,CONVERT(NUMERIC(5,1), ROUND([s12], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c12], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r12], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [12]
		,(select '����������� ������ ������������ ��� ������������� ��� ������������'as specific,CONVERT(NUMERIC(5,1), ROUND([s13], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c13], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r13], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [13]
		,(select '���������� � ���������� ������� ����'as specific,CONVERT(NUMERIC(5,1), ROUND([s14], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c14], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r14], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [14]
		,(select '��� ���������� ����, ��� ����� ��������'as specific,CONVERT(NUMERIC(5,1), ROUND([s15], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c15], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r15], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [15]
		,(select '����� ������������ ��� ��������'as specific,CONVERT(NUMERIC(5,1), ROUND([s16], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c16], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r16], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [16]
		,(select '�������� ����� ��������� ����������'as specific,CONVERT(NUMERIC(5,1), ROUND([s17], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c17], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r17], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [17]

		,(select '�������� �� ������� �������� ������� � �������' as specific, CONVERT(NUMERIC(5,1), ROUND([ss1], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc1], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr1], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s1]
		,(select '���������� ������, ������� �������� ������������'as specific,CONVERT(NUMERIC(5,1), ROUND([ss2], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc2], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr2], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s2]
		,(select '������������ ������ �������'as specific,CONVERT(NUMERIC(5,1), ROUND([ss3], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc3], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr3], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s3]
		,(select '����������� ������ ������������ ��� ������������'as specific,CONVERT(NUMERIC(5,1), ROUND([ss4], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc4], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr4], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s4]
		,(select '���������� � ���������� ������� ����'as specific,CONVERT(NUMERIC(5,1), ROUND([ss5], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc5], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr5], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s5]
		,(select '������������� ������� ���������� ������������ � ������������ �������'as specific,CONVERT(NUMERIC(5,1), ROUND([ss6], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc6], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr6], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s6]
		,(select '������������� ������� ���������� ������������ � ������������ �������'as specific,CONVERT(NUMERIC(5,1), ROUND([ss7], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc7], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr7], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s7]
		,(select '����������� ������ ������������ ��� ������������� ��� ������������'as specific,CONVERT(NUMERIC(5,1), ROUND([ss8], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc8], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr8], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s8]
		,(select '���������� � ���������� ������� ����'as specific,CONVERT(NUMERIC(5,1), ROUND([ss9], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc9], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr9], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s9]
		,(select '������������ ��������� ���� � � ���������'as specific,CONVERT(NUMERIC(5,1), ROUND([ss10], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc10], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr10], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s10]
		,(select '����������� ������ ������������ ��� ������������'as specific,CONVERT(NUMERIC(5,1), ROUND([ss11], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc11], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr11], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s11]
		,(select '����� �� ���������-������������ �������'as specific,CONVERT(NUMERIC(5,1), ROUND([ss12], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc12], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr12], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s12]
		,(select '�������������� ��������� � ����������'as specific,CONVERT(NUMERIC(5,1), ROUND([ss13], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc13], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr13], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s13]
		,(select '���������� ������� ����'as specific,CONVERT(NUMERIC(5,1), ROUND([ss14], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([sc14], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([sr14], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [s14]



from #TempSchool
) as ty
select * from #Sepjson

go
insert into ['2020']
	select [code_sub],[name_sub], [year], [code_ou], 
		[name_ou],[type_ou],[district],[cluster],
		(select Count(*) as [���������� ����������]

				,CONVERT(NUMERIC(5,1), ROUND(sum([����])/Count([����]), 1, 1)) as [������� �������� ����]
				,(select Count([�����]) from [dbo].[ege2020] where [��� ��������] = 18 and [�����] = 2 and #Sepjson.[code_ou] = [dbo].[ege2020].[��� ��]) as [�� ���������� ������������ ���������� ��������]
				,(select Count([����]) from [dbo].[ege2020] where [��� ��������] = 18 and [����] = 100 and #Sepjson.[code_ou] = [dbo].[ege2020].[��� ��]) as [���������� 100-����������]
		
		from [dbo].[ege2020] 
		where [��� ��������] = 18 and
		#Sepjson.[code_ou] = [dbo].[ege2020].[��� ��]
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
		  [17] + ']' as part1,
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
		  [s14]+ ']' as part2
		  from #Sepjson


