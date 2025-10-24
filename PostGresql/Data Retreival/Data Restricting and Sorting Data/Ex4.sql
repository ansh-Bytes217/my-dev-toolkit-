SELECT first_name, last_name, hire_date 
FROM employees 
WHERE TO_CHAR(hire_date, 'YYYY')  LIKE '%87';
