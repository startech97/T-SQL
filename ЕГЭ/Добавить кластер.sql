--�������� �������
alter table [dbo].[ege2019] add  [�������] int
go
update [dbo].[ege2019]
set [�������] = (select distinct [�������]
				 from [dbo].[��������]
				 where [��� ��] = [dbo].[ege2019].[��� ��])

--�������� �������
delete from [dbo].[Sheet1$]
where [������������� �����] = '���������������� ��������������� �����������'
delete from [dbo].[Sheet1$]
where [������������� �����] = '��������� ��� ������ �������� ��'

select [������������� �����] from [dbo].[Sheet1$]
group by [������������� �����]


alter table [dbo].[Sheet1$] add  [�������] int
go
update [dbo].[Sheet1$]
set [�������] = (select distinct [�������]
				 from [dbo].[��������]
				 where [��� ��] = [dbo].[Sheet1$].[��� ��])