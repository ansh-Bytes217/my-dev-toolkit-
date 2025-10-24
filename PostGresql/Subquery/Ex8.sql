-- This SQL query retrieves the first name, last name, and salary of employees whose salary is greater than that of an employee with the last name 'Bell', ordering the results by first name.

SELECT first_name, -- Selects the first_name column from the employees table
       last_name, -- Selects the last_name column from the employees table
salary -- Selects the salary column from the employees table
FROM employees -- Specifies the table from which to retrieve data, in this case, the employees table
WHERE salary >( -- Filters the rows to include only those where the salary is greater than the salary of an employee with the last name 'Bell'
    SELECT salary -- Subquery: Selects the salary of an employee with the last name 'Bell'
    FROM employees 
    WHERE last_name = 'Bell' -- Filters employees with the last name 'Bell'
) 
ORDER BY first_name; -- Orders the results by first name
