select name+'('+left(occupation,1)+')'
from occupations 
order by name;

with cte as (
select count(*) as cnt,occupation 
from occupations
group by occupation
)
select 'There are a total of '+cast(cnt as nvarchar(10)) +' '+lower(occupation) + 's.'from cte
order by cnt,occupation
