SELECT first_name, last_name, salary, department_id 
FROM employees 
WHERE salary NOT BETWEEN 10000 AND 15000 
AND department_id IN (30, 100);
