-- This SQL query retrieves the first name, last name, and salary of employees who belong to departments with names starting with 'IT' and have a salary greater than the average salary of all employees.

SELECT first_name, -- Selects the first_name column from the employees table
       last_name, -- Selects the last_name column from the employees table
salary -- Selects the salary column from the employees table
FROM employees -- Specifies the table from which to retrieve data, in this case, the employees table
WHERE department_id IN ( -- Filters the rows to include only those where the department_id is in the set of department_ids obtained from the subquery
    SELECT department_id -- Subquery: Selects the department_id of departments with names starting with 'IT'
    FROM departments -- Specifies the table from which to retrieve data, in this case, the departments table
    WHERE department_name LIKE 'IT%' -- Filters departments whose names start with 'IT'
) 
AND salary >( -- Further filters the rows to include only those where the salary is greater than the average salary of all employees
    SELECT avg(salary) -- Subquery: Calculates the average salary of all employees
    FROM employees
);
