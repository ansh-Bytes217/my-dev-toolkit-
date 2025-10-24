-- This SQL query retrieves employee and manager details by joining the employees table with itself.

SELECT W1.employee_id as "Emp_id", -- Selects the employee ID column from the first instance of the employees table and labels it as "Emp_id"
       W1.last_name AS "Employee", -- Selects the last name column from the first instance of the employees table and labels it as "Employee"
       W2.employee_id AS "Manager ID", -- Selects the employee ID column from the second instance of the employees table and labels it as "Manager ID"
       W2.last_name AS "Manager" -- Selects the last name column from the second instance of the employees table and labels it as "Manager"
FROM employees W1 -- Specifies the first instance of the employees table and aliases it as "W1"
JOIN employees W2 -- Specifies the second instance of the employees table and aliases it as "W2"
ON W1.manager_id = W2.employee_id; -- Joins the first instance with the second instance based on the manager_id and employee_id
