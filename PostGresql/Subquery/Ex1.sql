-- This SQL query retrieves the first name, last name, and salary of employees whose salary is greater than that of an employee with the last name 'Bull'.

SELECT first_name, -- Selects the first_name column from the employees table
       last_name, -- Selects the last_name column from the employees table
salary -- Selects the salary column from the employees table
FROM employees -- Specifies the table from which to retrieve data, in this case, the employees table
WHERE salary >  -- Filters the rows to include only those where the salary is greater than the salary of an employee with the last name 'Bull'
      (SELECT salary -- Subquery: Selects the salary of an employee with the last name 'Bull'
       FROM employees 
       WHERE last_name = 'Bull');
