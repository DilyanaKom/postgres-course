select 
id,
concat_ws(' ', first_name, middle_name, last_name) as full_name,
hire_date
from
employees
order by 
hire_date
offset 9;
