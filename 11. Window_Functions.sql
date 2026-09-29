 --- WINDOWS FUNCTIONS 
 
 select d.employee_id,e.first_name,gender,avg(salary) over(partition by gender)
 from employee_demographics e
 JOIN employee_salary d ON d.employee_id= e.employee_id ;
 
select employee_id,first_name,dept_id,salary, mIN(salary) over(partition by dept_id) as LOWEST_sal
 from employee_salary ;
 
select employee_id,first_name,dept_id,salary, max(salary) over(partition by dept_id) as highest_sal
 from employee_salary where dept_id is not null;
 
 select d.employee_id,e.first_name,gender,salary,sum(salary) over(partition by gender order by d.employee_id) as rooling_total
 from employee_demographics e
 JOIN employee_salary d ON d.employee_id= e.employee_id ;
 
 
 --------- ROW_NUMBER(), RANK(), DENSE_RANK() ------
 select first_name,gender,row_number() over()
 from employee_demographics ;             ------------- row_number------
 
 select first_name,gender,row_number() over(partition by gender)
 from employee_demographics ;             ------- row number with parttion by 
 
 select first_name,salary,dept_id, row_number()
 over(partition by dept_id order by salary)  as new_num
 from employee_salary;
 
 select first_name,gender, row_number() over(partition by gender order by age) AS row_num,
 rank() over(partition by gender order by age) AS rank_num,
 dense_rank() over(partition by gender order by age) AS den_rank
 from employee_demographics;

----- LAG() AND LEAD() ------
select first_name,employee_id,dept_id,salary,
lag(salary) over(order by salary) as prev_sal
 from employee_salary;

select first_name,salary,
lead(salary) over(order by salary) as next_salary
from employee_salary; 

