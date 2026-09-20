--- HAVING AND WHERE --
# having filter the groups after the grouping
# where is fliter the the rows before the grouping

select first_name, max(age) 
from employee_demographics
group by first_name
having max(age) <55;


select occupation,avg(salary) 
from employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) >75000;


select occupation,avg(salary) AS salary 
from employee_salary
group by occupation 
having avg(salary)< 60000
order by salary asc;



