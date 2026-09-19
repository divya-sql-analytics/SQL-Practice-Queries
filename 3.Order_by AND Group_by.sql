--- GROUP BY AND ORDER BY 
#OREDER BY is used to sort the result set in ascending or descending order based on specified column.
#GROUP BY is used for group rows with the same values in specified columns#
----------------
select * from employee_demographics;

select  gender,AVG(age)
from employee_demographics
group by gender; 

# max is highest value , min is lowest values#
select * from employee_salary;
select occupation,max(salary)
from employee_salary
group by occupation,salary;

select  gender,AVG(age),min(age),max(age),count(age)
from employee_demographics
group by gender; 



select * 
from employee_demographics
order by gender,age asc ;

select * 
from employee_demographics
order by gender,age desc ;

select first_name
from employee_demographics
order by first_name asc ;