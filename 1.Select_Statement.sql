select * from parks_and_recreation.employee_demographics;

select  last_name,
first_name,
age,
(age + 10) * 10+10
from parks_and_recreation.employee_demographics;
#PEMDAS

select 
distinct gender from parks_and_recreation.employee_demographics;