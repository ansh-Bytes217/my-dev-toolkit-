-- Calculate the average salary and count of employees in the department with ID 90
SELECT AVG(salary),count(*) 
FROM employees 
WHERE department_id = 90;
