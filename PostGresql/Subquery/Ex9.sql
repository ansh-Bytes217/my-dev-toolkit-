
-- This SQL query retrieves all columns of the employee(s) with the minimum salary in the employees table.

SELECT * -- Selects all columns from the employees table
FROM employees -- Specifies the table from which to retrieve data, in this case, the employees table
WHERE salary = ( -- Filters the rows to include only those where the salary matches the minimum salary obtained from the subquery
    SELECT MIN(salary) -- Subquery: Calculates the minimum salary among all employees
    FROM employees
);
