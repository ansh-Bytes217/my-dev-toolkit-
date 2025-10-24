-- This SQL statement creates a new table named 'job_history' defining the structure and constraints for the table columns.

CREATE TABLE job_history ( 
    EMPLOYEE_ID decimal(6,0) NOT NULL PRIMARY KEY, -- Defines a column 'EMPLOYEE_ID' to store employee IDs as decimal numbers with a precision of 6 digits and no decimal places. The column cannot contain NULL values and serves as the primary key for the table.
    START_DATE date NOT NULL, -- Defines a column 'START_DATE' to store the start dates of job history records. The column cannot contain NULL values.
    END_DATE date NOT NULL, -- Defines a column 'END_DATE' to store the end dates of job history records. The column cannot contain NULL values.
    JOB_ID varchar(10) NOT NULL, -- Defines a column 'JOB_ID' to store job IDs as strings with a maximum length of 10 characters. The column cannot contain NULL values.
    DEPARTMENT_ID decimal(4,0) DEFAULT NULL, -- Defines a column 'DEPARTMENT_ID' to store department IDs as decimal numbers with a precision of 4 digits and no decimal places. If no value is provided during insertion, it defaults to NULL.
    FOREIGN KEY (job_id) REFERENCES jobs(job_id) -- Defines a foreign key constraint on the 'JOB_ID' column, referencing the 'JOB_ID' column in the 'jobs' table.
);
