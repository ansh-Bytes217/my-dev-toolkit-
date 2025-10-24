-- This SQL statement updates the 'email' and 'commission_pct' columns in the 'employees' table
-- for employees belonging to the department with department_id=110.
-- It sets the 'email' column to 'not available' and the 'commission_pct' column to 0.10 for matching rows.

UPDATE employees 
SET email='not available', commission_pct=0.10 
WHERE department_id=110;
