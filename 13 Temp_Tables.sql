--- Temporary Tables ---

create temporary TABLE temp_table 
(first_name varchar(50),
last_name varchar (50),
favorite_colour varchar(50)
);
select * from temp_table;

insert into temp_table
values ('siri' ,'deva' ,'black and white');
---------------------------------------------------------------
select * from employee_demographics;
 create temporary table age_above_50
 select * from employee_demographics
 where age >50;
 
 select * from age_above_50; 
 select * from employee_salary;
 
 create temporary table office_manager_occup
 select * from employee_salary
 where occupation ='office manager';
 
 select * from office_manager_occup;