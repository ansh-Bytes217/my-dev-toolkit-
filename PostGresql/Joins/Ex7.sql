-- This SQL query retrieves the employee ID, job title, and duration of employment in days for job history records associated with department ID 90.

SELECT employee_id, -- Selects the employee_id column
       job_title, -- Selects the job_title column
       end_date - start_date Days -- Calculates the duration of employment in days and labels it as "Days"
FROM job_history -- Specifies the first table from which to retrieve data, in this case, the job_history table
NATURAL JOIN jobs -- Performs a natural join with the jobs table to include associated job information
WHERE department_id = 90; -- Filters the rows to include only those associated with department ID 90
