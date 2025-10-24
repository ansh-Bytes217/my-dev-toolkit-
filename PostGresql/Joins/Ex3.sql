-- This SQL query retrieves employee details along with their department information for employees working in London.

SELECT e.first_name, -- Selects the first_name column from the employees table
       e.last_name, -- Selects the last_name column from the employees table
       e.job_id, -- Selects the job_id column from the employees table
       e.department_id, -- Selects the department_id column from the employees table
       d.department_name -- Selects the department_name column from the departments table
FROM employees e -- Specifies the first table from which to retrieve data, in this case, the employees table
JOIN departments d -- Joins the employees table with the departments table
ON (e.department_id = d.department_id) -- Specifies the join condition based on the department_id column
JOIN locations l ON -- Joins the departments table with the locations table
(d.location_id = l.location_id) -- Specifies the join condition based on the location_id column
WHERE l.city = 'London'; -- Filters the rows to include only those where the city is 'London'
