-- This SQL statement updates the 'email' column in the 'employees' table for employees 
-- belonging to the department with department_id=80 and having a commission percentage less than 0.20.
-- It sets the 'email' column to 'not available' for matching rows.

UPDATE employees 
SET email='not available'
WHERE department_id=80 
AND commission_pct<0.20;
