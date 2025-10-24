-- This SQL query retrieves department ID, department name, manager ID, and manager's first name by joining the departments and employees tables.

SELECT w1.department_id, -- Selects the department_id column from the first instance of the departments table
       w1.department_name, -- Selects the department_name column from the first instance of the departments table
       w2.manager_id, -- Selects the manager_id column from the second instance of the employees table
       w2.first_name -- Selects the first_name column from the second instance of the employees table
FROM departments w1 -- Specifies the first instance of the departments table and aliases it as 'w1'
INNER JOIN employees w2 -- Performs an inner join with the employees table, specifying the second instance and aliasing it as 'w2'
ON (w1.manager_id = w2.employee_id); -- Specifies the join condition where the manager_id from the first instance matches the employee_id from the second instance
