-- This SQL statement creates a new table named 'countries' with specified columns and constraints.

CREATE TABLE countries ( 
    COUNTRY_ID integer NOT NULL,         -- Defines the COUNTRY_ID column as an integer type, which cannot be NULL
    COUNTRY_NAME varchar(40) NOT NULL,  -- Defines the COUNTRY_NAME column as a varchar type with a maximum length of 40 characters, which cannot be NULL
    REGION_ID integer NOT NULL,          -- Defines the REGION_ID column as an integer type, which cannot be NULL
    PRIMARY KEY (COUNTRY_ID, REGION_ID)  -- Defines a composite primary key constraint on the COUNTRY_ID and REGION_ID columns
);
