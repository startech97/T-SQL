select district from [dbo].['2020']
group by [district] 

��������������� ��������������� �����������

update [dbo].['2020']
set [district] = '��������������� ��������������� �����������'
where code_ou = 760305 or code_ou =760410 or code_ou= 760314


select * from [dbo].['2020']
where code_ou = 760305 or code_ou =760410 or code_ou= 760314