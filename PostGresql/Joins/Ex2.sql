-- This SQL query retrieves the first name, last name, department ID, and department name for employees using a join operation.

SELECT first_name, -- Selects the first_name column
       last_name, -- Selects the last_name column
       department_id, -- Selects the department_id column
       department_name -- Selects the department_name column
FROM employees -- Specifies the first table from which to retrieve data, in this case, the employees table
JOIN departments USING (department_id); -- Joins the employees table with the departments table using the department_id column
