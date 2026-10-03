 ---- Triggers  and Events ----
 
 select * from employee_salary;
 select * from employee_demographics ;
 
 DELIMITER $$
CREATE TRIGGER employee_insert
      AFTER INSERT ON employee_salary
      FOR EACH ROW 
      BEGIN 
      INSERT INTO employee_demographics(employee_id,first_name,last_name)
      VALUES (new.employee_id, new.first_name, new.last_name);
      END $$
      DELIMITER ;
      
     INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
     VALUES(13,'Jennipher', 'lovely', 'Asst Manager', 1000000, null);
     
     
     DELIMITER $$
     CREATE TRIGGER employee_name
     BEFORE UPDATE ON employee_salary
     FOR each row 
     BEGIN
     UPDATE employee_demographics
     SET first_name = NEW.first_name,
		last_name = NEW.last_name
        WHERE employee_id = new. employee_id;
        END $$
        DELIMITER ;
        
        UPDATE employee_salary
        SET first_name = 'jenny',
            last_name =  'perks'
            WHERE employee_id = 14;
        
        SHOW VARIABLES LIKE 'event%';
    
     drop trigger employee_name;
  DELIMITER $$
     CREATE TRIGGER employee_name
     AFTER UPDATE ON employee_salary
     FOR each row 
     BEGIN
     UPDATE employee_demographics
     SET first_name = NEW.first_name,
		last_name = NEW.last_name
        WHERE employee_id = new. employee_id;
        END $$
        DELIMITER ;
        
        
           UPDATE employee_salary
        SET first_name = 'jenny',
            last_name =  'perks'
            WHERE employee_id = 14;
            
            
            
            ----- EVENTS ---
DELIMITER $$          
CREATE EVENT delete_retires
ON SCHEDULE EVERY 30 SECOND 
DO 
BEGIN
DELETE  from employee_demographics
where age >= 60;
END $$
DELIMITER ;