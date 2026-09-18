-- WHERE caluse   is nothing but filter the records based on a condition 


select * from employee_salary
where first_name="Jerry";

select * from employee_salary 
where salary >=50000;
select * from employee_salary 
where salary <50000;

select * from employee_demographics 
where gender !='female';

select * from employee_demographics
where birth_date > '1985-01-01';

--- AND OR NOT -- Logical Operators
# AND  OPE only the condition is true
# AND OR opr either one condition is true

select * from employee_demographics
where birth_date > '1985-01-01'
AND gender = 'male'
;

select * from employee_demographics
where birth_date > '1985-01-01'
or not gender = 'male';

select * from employee_demographics
where (first_name ='Ben' AND age =38) OR age >55;


-- LIKE STATEMENT--  like is used search pattern in a column
-- % PERCENT SIGN ,_ UNDERSCORE
select * from employee_demographics
where first_name like 'Apr%';

# any letter that should be start from 'ch'
select * from employee_salary where first_name like '%ch%'; 

# A after any three letters should be shown 
select * from employee_salary where first_name like 'A__%';  

#this is shown as letter end with g
select * from employee_salary where first_name like '%g';  







