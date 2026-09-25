--- Case Statements

 select * from employee_demographics;
select first_name,last_name,age,
CASE
     WHEN age <= 30 THEN 'young'
     WHEN age between 30 and 50 then 'adults'
     WHEN age >=50 THEN 'too old'
     END as age_count
    from employee_demographics;
    
    
    --- pay increase and bonus 
    ---- < 50000 =5%
    ---- > 50000 =7%
    ---- Finance = 10% bonus 
    
    
    SELECT 
    first_name,
    last_name,
    salary,
    CASE
        WHEN salary < 50000 THEN salary * 1.05
        WHEN salary > 50000 THEN salary * 1.07
    END AS new_salary,
    CASE
        WHEN dept_id = 6 THEN salary * .10
    END AS bonus
FROM
    employee_salary;
    
    
    