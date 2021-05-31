/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [code_sub]
      ,[part]
      ,[num]
      ,[name]
      ,[max]
  FROM [COIKKO].[specs].[Спецификация]

  select * from [specs].[Спецификация]
  where code_sub = 9
