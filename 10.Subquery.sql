--- SUB QUERY

select * from employee_demographics;
select * from employee_salary;
select * from parks_departments;


select avg(salary)
from employee_salary;   --- scalar query it returns only one column and one row 
select employee_id
from employee_salary;   ---- row subqerey it returns multiple rows and one column 

select employee_id,first_name,last_name from employee_salary where salary >(
select avg(salary) from employee_salary);

select employee_id,first_name,age from employee_demographics where age >(select avg(age) from employee_demographics);

select employee_id,first_name,salary from employee_salary where salary=(select max(salary) from employee_salary);

------ Find employees whose slary is greater than leslie salary ----
select first_name,salary from employee_salary where salary >
(select salary from employee_salary where first_name= 'Leslie');   

select * from employee_salary where dept_id IN  (select dept_id employee_salary where first_name = 'Tom');
select employee_id,first_name,age,gender from employee_demographics where age> (select avg(age) from employee_demographics where gender='female');

select tt.employee_id,tt.first_name from employee_demographics tt where exists(select * from employee_salary t where t.employee_id = tt.employee_id) ;

select tt.employee_id,tt.first_name from employee_salary tt where not exists(select * from employee_demographics t where t.employee_id = tt.employee_id);

select tt.employee_id,tt.first_name from employee_demographics tt where exists (select * from employee_salary t where t.employee_id =tt.employee_id AND t.salary >60000);

select distinct t.employee_id,t.first_name,tt.salary from employee_demographics t 
inner JOIN employee_salary  tt on tt.employee_id =t.employee_id where tt.salary >60000;


