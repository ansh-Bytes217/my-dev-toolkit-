-- This SQL query retrieves the first name, last name, and salary of employees whose salary matches the minimum salary defined for their job.

SELECT first_name, -- Selects the first_name column from the employees table
       last_name, -- Selects the last_name column from the employees table
salary -- Selects the salary column from the employees table
FROM employees -- Specifies the table from which to retrieve data, in this case, the employees table
WHERE employees.salary = ( -- Filters the rows to include only those where the employee's salary matches the minimum salary defined for their job
    SELECT min_salary -- Subquery: Selects the minimum salary defined for the employee's job
    FROM jobs -- Specifies the table from which to retrieve data, in this case, the jobs table
    WHERE employees.job_id = jobs.job_id -- Matches the job_id of employees with the job_id of jobs to ensure correct job-to-salary comparison
);
