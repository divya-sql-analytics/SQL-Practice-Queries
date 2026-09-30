--- COMMON TABLE EXPRESSIONS (CTEs) -----
--- non -recursive cte also called as simple cte ----

with cte_table as 
(select first_name,avg(salary) as avg_sal
 from employee_salary
 where salary <60000
 group by first_name)
 select * from cte_table;                       

with cte_example AS 
(select gender,avg(salary) avg_sal,max(salary) max_sal,min(salary) min_sal,count(salary) cou_sal
 from employee_demographics t
 join employee_salary tt on t.employee_id =tt.employee_id
 group by gender)
 select avg(avg_sal)
 from cte_example;
 
select avg(avg_sal)
from
(select gender,avg(salary) avg_sal,max(salary) max_sal,min(salary) min_sal,count(salary) cou_sal
 from employee_demographics t
 join employee_salary tt on t.employee_id =tt.employee_id
 group by gender
 )example_subquery;           ----- 
 
 
 with CTE_Example AS 
(select employee_id,gender,birth_date
 from employee_demographics 
 where birth_date > '1978-01-01'),
 CTE_Example2 as
 ( select salary,employee_id
 from employee_salary
 where salary > 50000)
 select * from CTE_Example 
 join CTE_Example2 
 on CTE_Example.employee_id = CTE_Example2.employee_id;

 with cte_example (Gender,Avg_sal,Min_sal,Max_sal,Count_sal) AS 
(select gender,avg(salary) avg_sal,max(salary) max_sal,min(salary) min_sal,count(salary) cou_sal
 from employee_demographics t
 join employee_salary tt on t.employee_id =tt.employee_id
 group by gender)
 select *
 from cte_example;


with employee_above_40 as
(select * 
from employee_demographics 
where age >40
)select * from employee_above_40;

with female_employees as 
(select employee_id,gender,age from employee_demographics
where gender ='female') 
select * from female_employees where age>35;








 