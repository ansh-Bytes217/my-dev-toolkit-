-- This SQL query calculates the salary difference between the highest and lowest salaries among employees.

SELECT MAX(salary) - MIN(salary) DIFFERENCE -- Calculates the difference between the maximum and minimum salaries from the employees table and labels the result column as "DIFFERENCE"
FROM employees; -- Specifies the table from which to retrieve data, in this case, the employees table
