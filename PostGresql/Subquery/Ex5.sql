-- This SQL query retrieves the first name, last name, and salary of employees whose salary is greater than the average salary of all employees.

SELECT first_name, -- Selects the first_name column from the employees table
       last_name, -- Selects the last_name column from the employees table
salary -- Selects the salary column from the employees table
FROM employees -- Specifies the table from which to retrieve data, in this case, the employees table
WHERE salary >( -- Filters the rows to include only those where the salary is greater than the average salary of all employees
    SELECT AVG(salary) -- Subquery: Calculates the average salary of all employees
    FROM employees
);
