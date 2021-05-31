  delete from [dbo].[auth]
  DBCC CHECKIDENT ('auth', RESEED, 0);
  with mys ([code_ou], [name_ou],[district])
  as (
  select distinct [code_ou], [name_ou],[district] from [dbo].['2020']
  )
  insert into [dbo].[auth](name_ou,district,code_ou)
  select name_ou,district, code_ou from mys
  order by district