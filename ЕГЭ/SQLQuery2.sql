/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name_ou]
      ,[district]
      ,[code_ou]
      ,[password]
  FROM [COIKKO].[dbo].[auth]

  SELECT* FROM sys.databases

  SELECT cast(substring(name,2,4)as int )FROM sys.objects WHERE  name like'_20%'