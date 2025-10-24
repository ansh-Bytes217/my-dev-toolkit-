-- This SQL statement updates the 'salary' column in the 'employees' table based on the department_id.
-- It increases the salary for employees in specific departments by a certain percentage and leaves it unchanged otherwise.

UPDATE employees 
SET salary = CASE department_id 
                WHEN 40 THEN salary + (salary * 0.25)  -- Increase salary by 25% for department_id 40
                WHEN 90 THEN salary + (salary * 0.15)  -- Increase salary by 15% for department_id 90
                WHEN 110 THEN salary + (salary * 0.10) -- Increase salary by 10% for department_id 110
                ELSE salary  -- Keep salary unchanged for other department_ids
            END
WHERE department_id IN (40,50,50,60,70,80,90,110); -- Update salary for employees in specified department_ids
