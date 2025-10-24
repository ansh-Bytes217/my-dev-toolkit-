-- This SQL statement updates the 'JOB_ID' column in the 'employees' table for an employee with employee_id=118 
-- and department_id=30 if their current job does not start with 'SH'. It sets their job to 'SH_CLERK'.

UPDATE employees 
SET JOB_ID = 'SH_CLERK' 
WHERE employee_id = 118 
AND department_id = 30 
AND NOT JOB_ID LIKE 'SH%';
