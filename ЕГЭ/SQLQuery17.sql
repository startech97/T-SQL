/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Код предмета]
      ,[Дата экзамена]
      ,[Статус обработки]
      ,[Код ППЭ]
      ,[Код аудитории]
      ,[Код варианта]
      ,[Штрихкод БР]
      ,[Код ОУ]
      ,[Наименование ОУ]
      ,[Тип ОУ]
      ,[Вид ОУ]
      ,[Форма собственности ОУ]
      ,[Код участника]
      ,[Категория]
      ,[Класс]
      ,[Пол]
      ,[ОВЗ]
      ,[Муниципальный район]
      ,[Город-село]
      ,[Форма обучения]
      ,[Профиль]
      ,[Первичный балл]
      ,[Балл]
      ,[Зачет]
      ,[TestResultA]
      ,[TestResultB]
      ,[TestResultC]
      ,[TestResultD]
  FROM [CoikkoDWH].[dbo].[типы]

  select [Код ОУ], [Тип ОУ] 
  from [dbo].[типы]
  where [Тип ОУ] = 760912
  group by [Код ОУ], [Тип ОУ]

