-- This SQL statement creates a new table named 'jobs' with specified columns and constraints.

CREATE TABLE jobs ( 
    JOB_ID integer NOT NULL UNIQUE,      -- Defines the JOB_ID column as an integer type, which cannot be NULL and must be unique
    JOB_TITLE varchar(35) NOT NULL,     -- Defines the JOB_TITLE column as a varchar type with a maximum length of 35 characters, which cannot be NULL
    MIN_SALARY decimal(6,0)              -- Defines the MIN_SALARY column as a decimal type with a precision of 6 digits and 0 decimal places
);
