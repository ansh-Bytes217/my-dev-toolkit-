-- This SQL query retrieves the first name and last name of employees who are managed by managers located in the US.

SELECT first_name, -- Selects the first_name column from the employees table
       last_name -- Selects the last_name column from the employees table
FROM employees -- Specifies the table from which to retrieve data, in this case, the employees table
WHERE manager_id IN ( -- Filters the rows to include only those where the manager_id matches an employee_id
        SELECT employee_id -- Subquery: Selects the employee_id of managers located in the US
        FROM employees 
        WHERE department_id IN ( -- Filters managers based on the department_id
                SELECT department_id -- Subquery: Selects the department_id of departments located in the US
                FROM departments 
                WHERE location_id IN ( -- Filters departments based on the location_id
                        SELECT location_id -- Subquery: Selects the location_id of locations in the US
                        FROM locations 
                        WHERE country_id = 'US' -- Filters locations based on the country_id, 'US'
                    )
            )
    );
