-- Retrieve the maximum salary among employees with the job ID 'IT_PROG'
SELECT MAX(salary) 
FROM employees 
WHERE job_id = 'IT_PROG';
