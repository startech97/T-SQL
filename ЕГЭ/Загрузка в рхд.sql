
IF OBJECT_ID(N'tempdb..#TempAll', N'U') is not null begin
	drop table #TempAll
end
go
select * into #TempALL
from [dbo].['2011']
go
select * from #TempALL

alter table [#TempALL] add  SUBJECT_ID int, DATE_ID int,OU_ID int
/* Пополняем справочник по Образовательным учереждениям*/
----------------------------------------------------------------------------------------
go
IF OBJECT_ID(N'tempdb..#TempOU', N'U') is not null begin
	drop table #TempOU
end

----------------------------------------------------------------------------------------

select * into #TempOU
from [ege].[OU]
where 1=0

----------------------------------------------------------------------------------------

insert into [#TempOU] (code_ou,name_ou,district,city,type_ou,view_ou,ownership_ou)
select distinct [Код ОУ],[Наименование ОУ],[Муниципальный район],[Город-село],[Тип ОУ],[Вид ОУ],[Форма собственности ОУ]
from [#TempALL]
where	[Код ОУ] is not null and
		[Наименование ОУ] is not null and
		[Муниципальный район] is not null and
		[Город-село] is not null and
		[Тип ОУ] is not null and
		[Вид ОУ] is not null and
		[Форма собственности ОУ] is not null

----------------------------------------------------------------------------------------
merge into [ege].[OU] as O
	using [#TempOU] as T
	on O.code_ou = T.code_ou
	and O.name_ou = T.name_ou
	and O.type_ou = T.type_ou
	and O.view_ou = T.view_ou
	and O.ownership_ou = T.ownership_ou
	and O.district = T.district
	and O.city = T.city
when not matched then
	insert (code_ou,name_ou,district,city,type_ou,view_ou,ownership_ou,StartDate,isCurrent)
	values(T.code_ou,T.name_ou,T.district,T.city,T.type_ou,T.view_ou,T.ownership_ou,'2011', 1);

merge into [ege].[OU] as O
	using [#TempOU] as T
	on O.code_ou = T.code_ou
when matched and (O.name_ou <> T.name_ou or
					O.type_ou <> T.type_ou or
					O.view_ou <> T.view_ou or
					O.ownership_ou <> T.ownership_ou or
					O.district <> T.district or
					O.city <> T.city
					)
then
update
set isCurrent = 0, EndDate = '2011';

----------------------------------------------------------------------------------------

update [#TempALL]
set OU_ID = (	
				select id
				from [ege].[OU]
				where code_ou = [#TempALL].[Код ОУ]
				and name_ou = [#TempALL].[Наименование ОУ]
				and district = [#TempALL].[Муниципальный район]
				and city = [#TempALL].[Город-село]
				and type_ou = [#TempALL].[Тип ОУ]
				and view_ou = [#TempALL].[Вид ОУ]
				and ownership_ou = [#TempALL].[Форма собственности ОУ]
			)

----------------------------------------------------------------------------------------

alter table [#TempALL]
drop column [Код ОУ],[Наименование ОУ],[Тип ОУ],[Вид ОУ],[Форма собственности ОУ],[Муниципальный район],[Город-село]

----------------------------------------------------------------------------------------
drop table [#TempOU]
/*
//
//
//
//
*/
/*Пополняем справочник по ДАТАМ*/

IF OBJECT_ID(N'tempdb..#TempDates', N'U') is not null begin
	drop table #TempDates
end
go
select * into #TempDates
from [ege].[Dates]
where 1=0
go
----------------------------------------------------------------------------------------

insert into [#TempDates] (date_exam)
select distinct [Дата экзамена]
from [#TempALL]
where [Дата экзамена] is not null

----------------------------------------------------------------------------------------

merge into [ege].[Dates] as D
	using [#TempDates] as T
	on D.date_exam = T.date_exam
when not matched then
	insert (date_exam,academic_year)
	values(T.date_exam, '2010-2011');


----------------------------------------------------------------------------------------

update [#TempALL]
set DATE_ID = (	
				select id
				from [ege].[Dates]
				where date_exam = [#TempALL].[Дата экзамена]
			)

----------------------------------------------------------------------------------------

alter table [#TempALL]
drop column [Дата экзамена]

----------------------------------------------------------------------------------------

drop table [#TempDates]

----------------------------------------------------------------------------------------
/*
//
//
//
//
*/
/*Пополняем спарвочник по предметам*/

IF OBJECT_ID(N'tempdb..#TempSubject', N'U') is not null begin
	drop table #TempSubject
end
go
----------------------------------------------------------------------------------------

select * into #TempSubject
from [ege].[Subject]
where 1=0

go

insert into [#TempSubject](subject_code)
select distinct [Код предмета] from [#TempALL]
where [Код предмета] is not null

go

merge into [ege].[Subject] as S
using [#TempSubject] as T
on S.subject_code = T.subject_code
when not matched
then 
insert (subject_code)
values (T.subject_code);

go

update [#TempALL]
set SUBJECT_ID = (select id
					from  [ege].[Subject]
					where id = [#TempALL].[Код предмета]
					)
go

alter table [#TempALL]
drop column [Код предмета]

----------------------------------------------------------------------------------------

drop table [#TempSubject]

----------------------------------------------------------------------------------------
/*
//
//
//
//
*/
/*Загружаем информацию по участникам*/

/*осталось выполнить загрузку по участникам*/

/*и загрузить факты в факты*/







-----------------------------------
select * from #TempALL

insert into [ege].[All]
select * from [#TempALL]
---------
---------








/*Сброс сравочников и фактов*/

delete from [ege].[All]

delete from [ege].[OU]
DBCC CHECKIDENT('[ege].[OU]', RESEED, 0)

delete from [ege].[Dates]
DBCC CHECKIDENT('[ege].[Dates]', RESEED, 0)

delete from [ege].[Subject]
DBCC CHECKIDENT('[ege].[Subject]', RESEED, 0)


select *
into [ege].[All]
from [dbo].['2020']
where 1=0












