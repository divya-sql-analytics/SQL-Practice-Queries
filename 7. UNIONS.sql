# UNIONS 

select * from employee_demographics
union 
select * from employee_salary;

select first_name,last_name
from employee_demographics
union all
select first_name,last_name
from employee_salary;


select first_name,last_name, 'old' AS label
from employee_demographics
where age >50
UNION  
select first_name,last_name, 'highly paid employee' AS label
from employee_salary
where salary > 70000;

select first_name,last_name, 'old MAN' AS label
from employee_demographics
where age >40 AND gender ='male'
UNION  
select first_name,last_name, 'OLD LADY' AS label
from employee_demographics
where age >40 AND gender ='female'
UNION 
select first_name,last_name, 'highly paid employee' AS label
from employee_salary
where salary > 70000
ORDER BY first_name,last_name;

