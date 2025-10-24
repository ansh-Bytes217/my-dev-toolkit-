-- This SQL statement creates a new table named 'jobs' if it does not already exist,
-- defining the structure and constraints for the table columns.

CREATE TABLE IF NOT EXISTS jobs ( 
    JOB_ID varchar(10) NOT NULL UNIQUE, -- Defines a column 'JOB_ID' to store job IDs as strings with a maximum length of 10 characters. The column cannot contain NULL values, and each value must be unique across all rows.
    JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', -- Defines a column 'JOB_TITLE' to store job titles as strings with a maximum length of 35 characters. The column cannot contain NULL values, and if no value is provided during insertion, it defaults to an empty string.
    MIN_SALARY decimal(6,0) DEFAULT 8000, -- Defines a column 'MIN_SALARY' to store minimum salary amounts as decimal numbers with a precision of 6 digits and no decimal places. If no value is provided during insertion, it defaults to 8000.
    MAX_SALARY decimal(6,0) DEFAULT NULL -- Defines a column 'MAX_SALARY' to store maximum salary amounts as decimal numbers with a precision of 6 digits and no decimal places. If no value is provided during insertion, it defaults to NULL.
);
