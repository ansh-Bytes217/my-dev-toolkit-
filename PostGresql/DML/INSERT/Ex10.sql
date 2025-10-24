-- This SQL statement creates a new table named 'departments' with specified columns and constraints.

CREATE TABLE departments ( 
    DEPARTMENT_ID integer NOT NULL UNIQUE,     -- Defines the DEPARTMENT_ID column as an integer type, which cannot be NULL and must be unique
    DEPARTMENT_NAME varchar(30) NOT NULL,      -- Defines the DEPARTMENT_NAME column as a varchar type with a maximum length of 30 characters, which cannot be NULL
    MANAGER_ID integer DEFAULT NULL,           -- Defines the MANAGER_ID column as an integer type with a default value of NULL
    LOCATION_ID integer DEFAULT NULL,          -- Defines the LOCATION_ID column as an integer type with a default value of NULL
    PRIMARY KEY (DEPARTMENT_ID,MANAGER_ID)     -- Defines a composite primary key constraint on the DEPARTMENT_ID and MANAGER_ID columns
);
