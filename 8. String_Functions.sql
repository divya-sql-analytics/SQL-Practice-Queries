# string functions 

select length('DATA ANALYST');

select first_name ,LENGTH(first_name)
 from employee_salary
 order by 2;
 
 select upper ('data analyst');
 select lower('DATA ANALYST');
 
 select last_name ,upper(last_name)
 from employee_salary
 order by 1;
 
 select first_name,lower(first_name)
 from employee_salary;
 
 select trim('     DATA ANALYST'   );  -- left trim
 select rtrim('     DATA ANALYST'   ); --- right trim
 
 select first_name, LEFT(first_name , 3),RIGHT(last_name, 3)
 from employee_demographics;
 
  select first_name, LEFT(first_name , 3),RIGHT(last_name, 3),
  substring(first_name ,3,2) ,
  birth_date,
  substring(birth_date,6,2) AS MONTH_ONLY
 from employee_demographics;
 
 select first_name,replace(first_name,'a','h') 
 from employee_demographics;             ---- replace 
 
 select first_name , locate('e',first_name)
 from employee_demographics;
 
 select first_name,last_name,
 concat(first_name,'  ',last_name)
 from employee_demographics;       --- concat
 
 
 
 

 