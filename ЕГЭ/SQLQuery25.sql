/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [code_ou]
      ,[name_sub]
      ,[year]
      ,[code_sub]
      ,[corr1]
  FROM [COIKKO].[dbo].[correlation]

  delete [dbo].[correlation]
  where code_sub = 18