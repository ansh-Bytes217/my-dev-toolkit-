-- This SQL query retrieves the first name and last name of employees who belong to the IT department.

SELECT first_name, -- Selects the first_name column from the employees table
       last_name -- Selects the last_name column from the employees table
FROM employees -- Specifies the table from which to retrieve data, in this case, the employees table
WHERE department_id -- Filters the rows to include only those where the department_id matches the department_id of the IT department
      IN (SELECT department_id -- Subquery: Selects the department_id of the IT department
          FROM departments 
          WHERE department_name = 'IT');
