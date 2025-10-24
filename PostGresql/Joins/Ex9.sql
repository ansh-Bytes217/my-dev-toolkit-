-- This SQL query retrieves department name, employee details, and years of experience for employees whose experience is greater than 15 years.

SELECT department_name, -- Selects the department_name column from the departments table
       first_name, -- Selects the first_name column from the employees table
       last_name, -- Selects the last_name column from the employees table
       hire_date, -- Selects the hire_date column from the employees table
salary, -- Selects the salary column from the employees table
       date_part('year', age(now(), hire_date)) Experience -- Calculates the years of experience for each employee and labels it as "Experience"
FROM departments w1 -- Specifies the first table from which to retrieve data, aliasing it as 'w1'
JOIN employees w2 -- Joins the departments table with the employees table, specifying the second table and aliasing it as 'w2'
ON (w1.manager_id = w2.employee_id) -- Specifies the join condition based on the manager_id and employee_id columns
WHERE date_part('year', age(now(), hire_date)) > 15; -- Filters the rows to include only those where the years of experience are greater than 15
