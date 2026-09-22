# JOINS 
select * from employee_demographics;
select * from employee_salary;

--- INNER JOIN 
select 
tt.first_name,
t.employee_id
from employee_demographics t 
inner join employee_salary tt
ON t.employee_id = tt.employee_id;

select 
tt.first_name,
t.employee_id
from employee_demographics t 
left join employee_salary tt
ON t.employee_id = tt.employee_id;

select 
tt.first_name,
t.employee_id
from employee_demographics t 
right join employee_salary tt
ON t.employee_id = tt.employee_id;

select * 
from employee_salary t
join employee_salary tt
ON t.employee_id + 1= tt.employee_id;

select t.employee_id as emp_santa,
t.first_name AS first_emp_santa ,
t.last_name AS last_emp_santa,
tt.employee_id as emp_name,
tt.first_name AS first_emp ,
tt.last_name AS last_emp
from employee_salary t
join employee_salary tt
ON t.employee_id + 1= tt.employee_id;


--- JOINING MUTLIPLE TABLES 

select * from parks_departments;
select 
tt.first_name,
t.employee_id,
p.department_name
from employee_demographics t 
inner join employee_salary tt
ON t.employee_id = tt.employee_id
inner join parks_departments p
ON tt.dept_id = p.department_id;
