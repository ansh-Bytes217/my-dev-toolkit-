-- This SQL query calculates summary statistics of salary from the employees table.

SELECT 
ROUND(MAX(salary),0) "Maximum", -- Selects the maximum salary and rounds it to the nearest whole number
ROUND(MIN(salary),0) "Minimum", -- Selects the minimum salary and rounds it to the nearest whole number
ROUND(SUM(salary),0) "Sum", -- Calculates the sum of all salaries and rounds it to the nearest whole number
ROUND(AVG(salary),0) "Average" -- Calculates the average salary and rounds it to the nearest whole number
FROM employees; -- Specifies the source table "employees" from which data is retrieved
