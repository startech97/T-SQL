--Добавить кластер
alter table [dbo].[ege2019] add  [Кластер] int
go
update [dbo].[ege2019]
set [Кластер] = (select distinct [Кластер]
				 from [dbo].[Кластеры]
				 where [код ОУ] = [dbo].[ege2019].[Код ОУ])

--Добавить кластер
delete from [dbo].[Sheet1$]
where [Муниципальный район] = 'Профессиональный образовательные организации'
delete from [dbo].[Sheet1$]
where [Муниципальный район] = 'Участники ЕГЭ других регионов РФ'

select [Муниципальный район] from [dbo].[Sheet1$]
group by [Муниципальный район]


alter table [dbo].[Sheet1$] add  [Кластер] int
go
update [dbo].[Sheet1$]
set [Кластер] = (select distinct [Кластер]
				 from [dbo].[Кластеры]
				 where [код ОУ] = [dbo].[Sheet1$].[Код ОУ])