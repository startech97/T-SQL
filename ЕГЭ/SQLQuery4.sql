select district from [dbo].['2020']
group by [district] 

√осударственные образовательные организации

update [dbo].['2020']
set [district] = '√осударственные образовательные организации'
where code_ou = 760305 or code_ou =760410 or code_ou= 760314


select * from [dbo].['2020']
where code_ou = 760305 or code_ou =760410 or code_ou= 760314