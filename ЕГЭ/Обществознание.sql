select len([TestResultB]) from [dbo].[ege2020]
where [��� ��������] = 12

IF OBJECT_ID(N'tempdb..#TempEge', N'U') is not null begin
	drop table #TempEge
end
go
with MyTable( [code_sub],[name_sub], [year], [code_ou], 
			  [name_ou],[type_ou],[district],[cluster],[results]) 
as
	(select   [��� ��������],'��������������',Year([���� ��������]),[��� ��], 
			  [������������ ��],[��� ��],[������������� �����],[�������],[TestResultB]

	from   [dbo].[ege2020]
	where  [��� ��������] = 12
	)

select * into #TempEge
from MyTable

go

alter table #TempEge add [1] float,[2] float,[3]float,[4]float,[5]float,
							[6]float,[7]float,[8]float,[9]float,[10]float,
							[11]float,[12]float,[13]float,[14]float,[15]float,
							[16]float,[17]float,[18]float,[19]float,[20]float
go 
update #TempEge
set [1] = substring(results,1,1),[2] = substring(results,2,1),[3] = substring(results,3,1),
	[4] = substring(results,4,1),[5] = substring(results,5,1),[6] = substring(results,6,1),
	[7] = substring(results,7,1),[8] = substring(results,8,1),[9] = substring(results,9,1),
	[10] = substring(results,10,1),[11] = substring(results,11,1),[12] = substring(results,12,1),
	[13] = substring(results,13,1),[14] = substring(results,14,1),[15] = substring(results,15,1),
	[16] = substring(results,16,1),[17] = substring(results,17,1),[18] = substring(results,18,1),
	[19] = substring(results,19,1),[20] = substring(results,20,1)

go

alter table #TempEge drop column [results]
select * from  #TempEge
update #TempEge
set [cluster] = 0
where [cluster] is null
go
IF OBJECT_ID(N'tempdb..#TempCluster', N'U') is not null begin
	drop table #TempCluster
end;

with ClusterGroup ([cluster2],[c1],[c2],[c3],[c4],[c5],[c6],[c7],[c8],[c9],[c10],[c11],[c12],[c13],[c14],[c15],[c16]
,[c17],[c18],[c19],[c20]) 
as (select [cluster]
	,round((sum([1])/Count([1]))/1*100, 1,1) as [1]
	  , round((sum([2])/Count([2]))/1*100, 1,1) as [2]
	  , round((sum([3])/Count([3]))/1*100, 1,1) as [3]
	  , round((sum([4])/Count([4]))/2*100, 1,1) as [4]
	  , round((sum([5])/Count([5]))/2*100, 1,1) as [5]
	  , round((sum([6])/Count([6]))/2*100, 1,1) as [6]
	  , round((sum([7])/Count([7]))/2*100, 1,1) as [7]
	  , round((sum([8])/Count([8]))/2*100, 1,1) as [8]
	  , round((sum([9])/Count([9]))/2*100, 1,1) as [9]
	  , round((sum([10])/Count([10]))/1*100, 1,1) as [10]
	  , round((sum([11])/Count([11]))/2*100, 1,1) as [11]
	  , round((sum([12])/Count([12]))/1*100, 1,1) as [12]
	  , round((sum([13])/Count([13]))/2*100, 1,1) as [13]
	  , round((sum([14])/Count([14]))/2*100, 1,1) as [14]
	  , round((sum([15])/Count([15]))/2*100, 1,1) as [15]
	  , round((sum([16])/Count([16]))/1*100, 1,1) as [16]
	  , round((sum([17])/Count([17]))/2*100, 1,1) as [17]
	  , round((sum([18])/Count([18]))/2*100, 1,1) as [18]
	  , round((sum([19])/Count([19]))/2*100, 1,1) as [19]
	  , round((sum([20])/Count([20]))/2*100, 1,1) as [20]

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
,[r17],[r18],[r19],[r20]) 
as (select
		round((sum([1])/Count([1]))/1*100, 1,1) as [r1]
	  , round((sum([2])/Count([2]))/1*100, 1,1) as [r2]
	  , round((sum([3])/Count([3]))/1*100, 1,1) as [r3]
	  , round((sum([4])/Count([4]))/2*100, 1,1) as [r4]
	  , round((sum([5])/Count([5]))/2*100, 1,1) as [r5]
	  , round((sum([6])/Count([6]))/2*100, 1,1) as [r6]
	  , round((sum([7])/Count([7]))/2*100, 1,1) as [r7]
	  , round((sum([8])/Count([8]))/2*100, 1,1) as [r8]
	  , round((sum([9])/Count([9]))/2*100, 1,1) as [r9]
	  , round((sum([10])/Count([10]))/1*100, 1,1) as [r10]
	  , round((sum([11])/Count([11]))/2*100, 1,1) as [r11]
	  , round((sum([12])/Count([12]))/1*100, 1,1) as [r12]
	  , round((sum([13])/Count([13]))/2*100, 1,1) as [r13]
	  , round((sum([14])/Count([14]))/2*100, 1,1) as [r14]
	  , round((sum([15])/Count([15]))/2*100, 1,1) as [r15]
	  , round((sum([16])/Count([16]))/1*100, 1,1) as [r16]
	  , round((sum([17])/Count([17]))/2*100, 1,1) as [r17]
	  , round((sum([18])/Count([18]))/2*100, 1,1) as [r18]
	  , round((sum([19])/Count([19]))/2*100, 1,1) as [r19]
	  , round((sum([20])/Count([20]))/2*100, 1,1) as [r20]
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
	  , round((sum([6])/Count([6]))/2*100, 1,1) as [s6]
	  , round((sum([7])/Count([7]))/2*100, 1,1) as [s7]
	  , round((sum([8])/Count([8]))/2*100, 1,1) as [s8]
	  , round((sum([9])/Count([9]))/2*100, 1,1) as [s9]
	  , round((sum([10])/Count([10]))/1*100, 1,1) as [s10]
	  , round((sum([11])/Count([11]))/2*100, 1,1) as [s11]
	  , round((sum([12])/Count([12]))/1*100, 1,1) as [s12]
	  , round((sum([13])/Count([13]))/2*100, 1,1) as [s13]
	  , round((sum([14])/Count([14]))/2*100, 1,1) as [s14]
	  , round((sum([15])/Count([15]))/2*100, 1,1) as [s15]
	  , round((sum([16])/Count([16]))/1*100, 1,1) as [s16]
	  , round((sum([17])/Count([17]))/2*100, 1,1) as [s17]
	  , round((sum([18])/Count([18]))/2*100, 1,1) as [s18]
	  , round((sum([19])/Count([19]))/2*100, 1,1) as [s19]
	  , round((sum([20])/Count([20]))/2*100, 1,1) as [s20]

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

select * from #Full
select * into [��������������]
from(
select [code_sub],[name_sub], [year], [code_ou], 
		[name_ou],[type_ou],[district],[cluster]

		,(select '����� � ��������: ������������� �������� ��������; �������� ����� � ������� ������������ ��������; ����� � ���� �������� � ������� ������������ ���������; �������������� �������� �������� ��� ������� ������������������ �������; ��������� �������� �������� � ����� ��� ������� ���������� �������, � ����� ��������� ���������� ����������; �������� ���������� ��������� � ��������; ������������� ������������� ������������ ���������, �������� ���������� ����, ��������� ��������� �������������; ����������� ���������������������� �������� (��������� ����������� ��������� � ������� ���� � ������)' as specific, CONVERT(NUMERIC(5,1), ROUND([s1], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c1], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r1], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [1]
		,(select '����� � ��������: ������������� �������� ��������; �������� ����� � ������� ������������ ��������; ����� � ���� �������� � ������� ������������ ���������; �������������� �������� �������� ��� ������� ������������������ �������; ��������� �������� �������� � ����� ��� ������� ���������� �������, � ����� ��������� ���������� ����������; �������� ���������� ��������� � ��������; ������������� ������������� ������������ ���������, �������� ���������� ����, ��������� ��������� �������������; ����������� ���������������������� �������� (����� ����������� ������� ��� ���� ��������� �������, �������������� � �������)'as specific,CONVERT(NUMERIC(5,1), ROUND([s2], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c2], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r2], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [2]
		,(select '����� � ��������: ������������� �������� ��������; �������� ����� � ������� ������������ ��������; ����� � ���� �������� � ������� ������������ ���������; �������������� �������� �������� ��� ������� ������������������ �������; ��������� �������� �������� � ����� ��� ������� ���������� �������, � ����� ��������� ���������� ����������; �������� ���������� ��������� � ��������; ������������� ������������� ������������ ���������, �������� ���������� ����, ��������� ��������� �������������; ����������� ���������������������� �������� (����������� ������� ������� � ��������) 'as specific,CONVERT(NUMERIC(5,1), ROUND([s3], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c3], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r3], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [3]
		,(select '��������������� � ������� ������� �������� ���������� ������� ( �����, �������, ��������, ���������), �� ����� � �������� � ����� �������� ��� ��������� ������� 'as specific,CONVERT(NUMERIC(5,1), ROUND([s4], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c4], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r4], 1, 1)) 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [4]
		,(select '������������� ���������� ���������� � ���������� ��������, ������� �� ����� ����� � ��������; ������������� ������������ ����� ������������� ������� � ���������� ��������� ���������� ������� � ������������������ ��������� � ��������� 'as specific,CONVERT(NUMERIC(5,1), ROUND([s5], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c5], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r5], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [5]
		,(select '��������� ���������������������� � ������������ ������ � �������� ������� �������������� ����� �� ���������� ���������� ��������� 'as specific,CONVERT(NUMERIC(5,1), ROUND([s6], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c6], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r6], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [6]
		,(select '��������������� � ������� ������� �������� ���������� ������� ( �����, �������, ��������, ���������), �� ����� � �������� � ����� �������� ��� ��������� ������� 'as specific,CONVERT(NUMERIC(5,1), ROUND([s7], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c7], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r7], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [7]
		,(select '������������� ���������� ���������� � ���������� ��������, ������� �� ����� ����� � ��������; ������������� ������������ ����� ������������� ������� � ���������� ��������� ���������� ������� � ������������������ ��������� � ��������� 'as specific,CONVERT(NUMERIC(5,1), ROUND([s8], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c8], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r8], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [8]
		,(select '��������� ���������������������� � ������������ ������ � �������� ������� �������������� ����� �� ���������� ���������� ��������� 'as specific,CONVERT(NUMERIC(5,1), ROUND([s9], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c9], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r9], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [9]
		,(select '������������ ����� ���������� ����������, �������������� � ��������� �������� �������� (�������) 'as specific,CONVERT(NUMERIC(5,1), ROUND([s10], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c10], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r10], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [10]
		,(select '��������������� � ������� ������� �������� ���������� ������� ( �����, �������, ��������, ���������), �� ����� � �������� � ����� �������� ��� ��������� ������� 'as specific,CONVERT(NUMERIC(5,1), ROUND([s11], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c11], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r11], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [11]
		,(select '������������ ����� ���������� ����������, �������������� � ��������� �������� �������� ( �������, ���������) 'as specific,CONVERT(NUMERIC(5,1), ROUND([s12], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c12], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r12], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [12]
		,(select '��������������� � ������� ������� �������� ���������� ������� ( �����, �������, ��������, ���������), �� ����� � �������� � ����� �������� ��� ��������� ������� 'as specific,CONVERT(NUMERIC(5,1), ROUND([s13], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c13], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r13], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [13]
		,(select '������������� ���������� ���������� � ���������� ��������, ������� �� ����� ����� � ��������; ������������� ������������ ����� ������������� ������� � ���������� ��������� ���������� ������� � ������������������ ��������� � ��������� 'as specific,CONVERT(NUMERIC(5,1), ROUND([s14], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c14], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r14], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [14]
		,(select '��������� ���������������������� � ������������ ������ � �������� ������� �������������� ����� �� ���������� ���������� ��������� 'as specific,CONVERT(NUMERIC(5,1), ROUND([s15], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c15], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r15], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [15]
		,(select '��������������� � ������� ������� ������ ���������������� �����, ����� � ������� �������� � ����������, ��������������� ����������� ���������� �� 'as specific,CONVERT(NUMERIC(5,1), ROUND([s16], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c16], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r16], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [16]
		,(select '��������������� � ������� ������� �������� ���������� ������� ( �����, �������, ��������, ���������), �� ����� � �������� � ����� �������� ��� ��������� �������'as specific,CONVERT(NUMERIC(5,1), ROUND([s17], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c17], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r17], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [17]
		,(select '������������� ���������� ���������� � ���������� ��������, ������� �� ����� ����� � ��������; ������������� ������������ ����� ������������� ������� � ���������� ��������� ���������� ������� � ������������������ ��������� � ��������� 'as specific,CONVERT(NUMERIC(5,1), ROUND([s18], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c18], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r18], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [18]
		,(select '��������� ���������������������� � ������������ ������ � �������� ������� �������������� ����� �� ���������� ���������� ��������� 'as specific,CONVERT(NUMERIC(5,1), ROUND([s19], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c19], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r19], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [19]
		,(select '�����������������, ������������� � �������� ��������������� ���������� ���������� (����������� �������� � �������, ��������������� ������������� ���������)'as specific,CONVERT(NUMERIC(5,1), ROUND([s20], 1, 1)) as 'school', CONVERT(NUMERIC(5,1), ROUND([c20], 1, 1)) as 'cluster', CONVERT(NUMERIC(5,1), ROUND([r20], 1, 1)) as 'region' from #Full where #TempSchool.[code_ou] = #Full.[code_ou] for json path, WITHOUT_ARRAY_WRAPPER  ) as [20]
from #TempSchool
) as ty