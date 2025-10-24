-- This SQL statement updates the 'SALARY' column in the 'employees' table for an employee with employee_id=105 
-- if their current salary is less than 5000. It sets their salary to 8000.

UPDATE employees 
SET SALARY = 8000 
WHERE employee_id = 105 
AND salary < 5000;
