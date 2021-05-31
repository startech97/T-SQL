  select code, name, sum([1]),sum([2]),sum([3]),sum([4])  from [dbo].[app2]
  group by code,name