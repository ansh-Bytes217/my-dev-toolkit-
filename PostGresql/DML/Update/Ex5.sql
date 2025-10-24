-- This SQL statement updates the 'email' column in the 'employees' table for employees 
-- belonging to the department identified by the department name 'Accounting'.
-- It sets the 'email' column to 'not available' for employees in the specified department.

UPDATE employees 
SET email='not available'
WHERE department_id=(
    SELECT department_id 
    FROM departments 
    WHERE department_name='Accounting'
);
