select distinct [��� ��] from [dbo].['2020']
select * into [dbo].['2020-clust']
from [dbo].['2020']


select * from [dbo].['2020-clust']
select * into clusterResults
from(
select [�������]
		,round((sum([1])/Count([1]))/1*100, 1,1) as [1]

	  , round((sum([2])/Count([2]))/1*100, 1,1) as [2]

	  , round((sum([3])/Count([3]))/1*100, 1,1) as [3]

	  , round((sum([4])/Count([4]))/1*100, 1,1) as [4]

	  , round((sum([5])/Count([5]))/1*100, 1,1) as [5]

	  , round((sum([6])/Count([6]))/1*100, 1,1) as [6]

	  , round((sum([7])/Count([7]))/1*100, 1,1) as [7]

	  , round((sum([8])/Count([8]))/5*100, 1,1) as [8]

	  , round((sum([9])/Count([9]))/1*100, 1,1) as [9]

	  , round((sum([10])/Count([10]))/1*100, 1,1) as [10]

	  -----------------------
	  ----------------------
	  , round((sum([11])/Count([11]))/1*100, 1,1) as [11]

	  , round((sum([12])/Count([12]))/1*100, 1,1) as [12]

	  , round((sum([13])/Count([13]))/1*100, 1,1) as [13]

	  , round((sum([14])/Count([14]))/1*100, 1,1) as [14]

	  , round((sum([15])/Count([15]))/1*100, 1,1) as [15]

	  , round((sum([16])/Count([16]))/2*100, 1,1) as [16]

	  , round((sum([17])/Count([17]))/1*100, 1,1) as [17]

	  , round((sum([18])/Count([18]))/5*100, 1,1) as [18]

	  , round((sum([19])/Count([19]))/1*100, 1,1) as [19]

	  , round((sum([20])/Count([20]))/1*100, 1,1) as [20]

	  -----------
	  -----------
	  , round((sum([21])/Count([21]))/1*100, 1,1) as [21]

	  , round((sum([22])/Count([22]))/1*100, 1,1) as [22]

	  , round((sum([23])/Count([23]))/1*100, 1,1) as [23]

	  , round((sum([24])/Count([24]))/1*100, 1,1) as [24]

	  , round((sum([25])/Count([25]))/1*100, 1,1) as [25]

	  , round((sum([26])/Count([26]))/4*100, 1,1) as [26]


from [dbo].['2020-clust']
group by [�������]

) fr



select [��� ��������]
      ,[���� ��������]
      ,[��� ��]
      ,[������������ ��]
      ,[������������� �����]
	  ,[�������] ------------ ����������
	  ,[���]
	  , round((sum([1])/Count([1]))/1*100, 1,1) as [1.1]
	  , (select round((sum([1])/Count([1]))/1*100, 1,1) from [dbo].['2020-region']) as [1.2]
	  , (select [1] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [1.3]
	  , '�������������� ��������� ���������� �������' as [s.1]
	  , round((sum([2])/Count([2]))/1*100, 1,1) as [2.1]
	  , (select round((sum([2])/Count([2]))/1*100, 1,1) from [dbo].['2020-region']) as [2.2]
	  , (select [2] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [2.3]
	  , '�������� ����� �����������  � ������' as [s.2]
	  , round((sum([3])/Count([3]))/1*100, 1,1) as [3.1]
	  , (select round((sum([3])/Count([3]))/1*100, 1,1) from [dbo].['2020-region']) as [3.2]
	  , (select [3] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [3.3]
	  , '����������� �������� �����' as [s.3]
	  , round((sum([4])/Count([4]))/1*100, 1,1) as [4.1]
	  , (select round((sum([4])/Count([4]))/1*100, 1,1) from [dbo].['2020-region']) as [4.2]
	  , (select [4] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [4.3]
	  , '������������� ����� (���������� ��������)' as [s.4]
	  , round((sum([5])/Count([5]))/1*100, 1,1) as [5.1]
	  , (select round((sum([5])/Count([5]))/1*100, 1,1) from [dbo].['2020-region']) as [5.2]
	  , (select [5] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [5.3]
	  , '����������� ����� ' as [s.5]
	  , round((sum([6])/Count([6]))/1*100, 1,1) as [6.1]
	  , (select round((sum([6])/Count([6]))/1*100, 1,1) from [dbo].['2020-region']) as [6.2]
	  , (select [6] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [6.3]
	  , '����������� �����' as [s.6]
	  , round((sum([7])/Count([7]))/1*100, 1,1) as [7.1]
	  , (select round((sum([7])/Count([7]))/1*100, 1,1) from [dbo].['2020-region']) as [7.2]
	  , (select [7] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [7.3]
	  , '��������������� ����� ' as [s.7]
	  , round((sum([8])/Count([8]))/5*100, 1,1) as [8.1]
	  , (select round((sum([8])/Count([8]))/5*100, 1,1) from [dbo].['2020-region']) as [8.2]
	  , (select [8] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [8.3]
	  , '�������������� �����' as [s.8]
	  , round((sum([9])/Count([9]))/1*100, 1,1) as [9.1]
	  , (select round((sum([9])/Count([9]))/1*100, 1,1) from [dbo].['2020-region']) as [9.2]
	  , (select [9] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [9.3]
	  , '������������ ������' as [s.9]
	  , round((sum([10])/Count([10]))/1*100, 1,1) as [10.1]
	  , (select round((sum([10])/Count([10]))/1*100, 1,1) from [dbo].['2020-region']) as [10.2]
	  , (select [10] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [10.3]
	  , '������������ ���������' as [s.10]
	  -----------------------
	  ----------------------
	  , round((sum([11])/Count([11]))/1*100, 1,1) as [11.1]
	  , (select round((sum([11])/Count([11]))/1*100, 1,1) from [dbo].['2020-region']) as [11.2]
	  , (select [11] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [11.3]
	  , '������������ ��������� ��������� ������ ���� ' as [s.11]
	  , round((sum([12])/Count([12]))/1*100, 1,1) as [12.1]
	  , (select round((sum([12])/Count([12]))/1*100, 1,1) from [dbo].['2020-region']) as [12.2]
	  , (select [12] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [12.3]
	  , '������������ ������ ��������� �������� � ��������� ��������� ' as [s.12]
	  , round((sum([13])/Count([13]))/1*100, 1,1) as [13.1]
	  , (select round((sum([13])/Count([13]))/1*100, 1,1) from [dbo].['2020-region']) as [13.2]
	  , (select [13] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [13.3]
	  , '������������ �� � �� ' as [s.13]
	  , round((sum([14])/Count([14]))/1*100, 1,1) as [14.1]
	  , (select round((sum([14])/Count([14]))/1*100, 1,1) from [dbo].['2020-region']) as [14.2]
	  , (select [14] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [14.3]
	  , '�������, ��������, ���������� ��������� ���� ' as [s.14]
	  , round((sum([15])/Count([15]))/1*100, 1,1) as [15.1]
	  , (select round((sum([15])/Count([15]))/1*100, 1,1) from [dbo].['2020-region']) as [15.2]
	  , (select [15] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [15.3]
	  , '������������ -�- � -��-  � ��������� ������ ����' as [s.15]
	  , round((sum([16])/Count([16]))/2*100, 1,1) as [16.1]
	  , (select round((sum([16])/Count([16]))/2*100, 1,1) from [dbo].['2020-region']) as [16.2]
	  , (select [16] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [16.3]
	  , '����� ���������� � ������� ���������� �����������' as [s.16]
	  , round((sum([17])/Count([17]))/1*100, 1,1) as [17.1]
	  , (select round((sum([17])/Count([17]))/1*100, 1,1) from [dbo].['2020-region']) as [17.2]
	  , (select [17] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [17.3]
	  , '����� ����������  � ������������  � ������������� �������' as [s.17]
	  , round((sum([18])/Count([18]))/5*100, 1,1) as [18.1]
	  , (select round((sum([18])/Count([18]))/5*100, 1,1) from [dbo].['2020-region']) as [18.2]
	  , (select [18] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [18.3]
	  , '����� ����������  � ������������ �� �������  � ������������' as [s.18]
	  , round((sum([19])/Count([19]))/1*100, 1,1) as [19.1]
	  , (select round((sum([19])/Count([19]))/1*100, 1,1) from [dbo].['2020-region']) as [19.2]
	  , (select [19] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [19.3]
	  , '����� ����������  � ���������������� ����������� ' as [s.19]
	  , round((sum([20])/Count([20]))/1*100, 1,1) as [20.1]
	  , (select round((sum([20])/Count([20]))/1*100, 1,1) from [dbo].['2020-region']) as [20.2]
	  , (select [20] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [20.3]
	  , '����� ���������� � ������� ����������� � ������� ������ �����' as [s.20]
	  -----------
	  -----------
	  , round((sum([21])/Count([21]))/1*100, 1,1) as [21.1]
	  , (select round((sum([21])/Count([21]))/1*100, 1,1) from [dbo].['2020-region']) as [21.2]
	  , (select [21] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [21.3]
	  , '�������������� ������' as [s.21]
	  , round((sum([22])/Count([22]))/1*100, 1,1) as [22.1]
	  , (select round((sum([22])/Count([22]))/1*100, 1,1) from [dbo].['2020-region']) as [22.2]
	  , (select [22] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [22.3]
	  , '����� ��� ������� ������������. ' as [s.22]
	  , round((sum([23])/Count([23]))/1*100, 1,1) as [23.1]
	  , (select round((sum([23])/Count([23]))/1*100, 1,1) from [dbo].['2020-region']) as [23.2]
	  , (select [23] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [23.3]
	  , '�������������-��������� ���� ���� ' as [s.23]
	  , round((sum([24])/Count([24]))/1*100, 1,1) as [24.1]
	  , (select round((sum([24])/Count([24]))/1*100, 1,1) from [dbo].['2020-region']) as [24.2]
	  , (select [24] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [24.3]
	  , '����������� �������� �����.' as [s.24]
	  , round((sum([25])/Count([25]))/1*100, 1,1) as [25.1]
	  , (select round((sum([25])/Count([25]))/1*100, 1,1) from [dbo].['2020-region']) as [25.2]
	  , (select [25] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [25.3]
	  , '�������� ����� �����������  � ������' as [s.25]
	  , round((sum([26])/Count([26]))/4*100, 1,1) as [26.1]
	  , (select round((sum([26])/Count([26]))/4*100, 1,1) from [dbo].['2020-region']) as [26.2]
	  , (select [26] from [dbo].[clusterResults] where [�������] = [dbo].['2020'].[�������]) as [26.3]
	  , '����. �������� �������� ���������������' as [s.26]

	  from [dbo].['2020']
	  group by [��� ��������]
      ,[���� ��������]
      ,[��� ��]
      ,[������������ ��]
      ,[������������� �����]
	  ,[�������]
	  ,[���]