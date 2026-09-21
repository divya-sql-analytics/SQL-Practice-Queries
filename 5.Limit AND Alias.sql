# LIMIT 

select * from employee_salary
order by first_name ASC
LIMIT 3; 

select * from employee_salary;
select * from employee_demographics order by age asc limit 2, 1;

--- ALIASING 
select gender ,AVG(age) AS avg_age
 from employee_demographics
 group by gender 
 having avg_age < 40;
 
 select occupation ,max(salary) max_salary
 from employee_salary 
 group by occupation 
 having max_salary >50000;
 
 