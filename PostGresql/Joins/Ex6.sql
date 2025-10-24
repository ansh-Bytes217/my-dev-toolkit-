-- This SQL query retrieves the department name along with the count of employees in each department, ordered alphabetically by department name.

SELECT department_name AS "Department Name", -- Selects the department_name column and labels it as "Department Name"
COUNT(*) AS "No of Employees" -- Calculates the count of employees in each department and labels it as "No of Employees"
FROM departments -- Specifies the first table from which to retrieve data, in this case, the departments table
INNER JOIN employees -- Performs an inner join between the departments and employees tables
ON employees.department_id = departments.department_id -- Specifies the join condition based on the department_id column
GROUP BY departments.department_id, department_name -- Groups the results by department_id and department_name
ORDER BY department_name; -- Orders the results alphabetically by department_name
