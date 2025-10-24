-- This SQL statement creates a new table named 'jobs' if it does not already exist,
-- defining the structure and constraints for the table columns.

CREATE TABLE IF NOT EXISTS jobs ( 
    JOB_ID varchar(10) NOT NULL, -- Defines a column 'JOB_ID' to store job IDs as strings with a maximum length of 10 characters. The column cannot contain NULL values.
    JOB_TITLE varchar(35) NOT NULL, -- Defines a column 'JOB_TITLE' to store job titles as strings with a maximum length of 35 characters. The column cannot contain NULL values.
    MIN_SALARY decimal(6,0), -- Defines a column 'MIN_SALARY' to store minimum salary amounts as decimal numbers with a precision of 6 digits and no decimal places. This column can contain NULL values.
    MAX_SALARY decimal(6,0), -- Defines a column 'MAX_SALARY' to store maximum salary amounts as decimal numbers with a precision of 6 digits and no decimal places. This column can contain NULL values.
CHECK(MAX_SALARY<=25000) -- Defines a check constraint to ensure that the 'MAX_SALARY' value is less than or equal to 25000.
);
