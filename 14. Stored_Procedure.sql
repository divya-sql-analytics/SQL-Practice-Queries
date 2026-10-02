--- STORED PROCEDURES ---

---- create procedure ---
CREATE PROCEDURE high_salaries()            
select * from employee_salary
where salary >= 50000;                

 --- call the procedure ---
CALL high_salaries();        


DELIMITER //
CREATE PROCEDURE high_salaries2() 
BEGIN           
select * from employee_salary
where salary >= 50000; 
select * from employee_salary
where salary >= 10000; 
END //
DELIMITER ;

CALL high_salaries2();


DELIMITER //
CREATE PROCEDURE high_salaries3(p_employeeid INT) 
BEGIN           
select SALARY  from employee_salary
WHERE employee_id = p_employeeid ;
END //
DELIMITER ;

CALL high_salaries3(1) ;


DELIMITER //
CREATE PROCEDURE high_salaries4(in p_employeeid INT) 
BEGIN           
select SALARY  from employee_salary
WHERE employee_id = p_employeeid ;
END //
DELIMITER ;

CALL high_salaries4(3) ;

DELIMITER //
CREATE PROCEDURE high_salaries6(in p_employeename varchar(50)) 
BEGIN           
select SALARY  from employee_salary
WHERE first_name = p_employeename  ;
END //
DELIMITER ;

CALL high_salaries6('Tom') ;

