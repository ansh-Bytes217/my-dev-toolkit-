-- This SQL statement creates a new table named 'countries' with specified columns and constraints.

CREATE TABLE countries ( 
    COUNTRY_ID SERIAL PRIMARY KEY,        -- Defines the COUNTRY_ID column as an auto-incrementing serial integer primary key
    COUNTRY_NAME varchar(40) NOT NULL DEFAULT 'N/A', -- Defines the COUNTRY_NAME column as a varchar type with a maximum length of 40 characters, which cannot be NULL, and has a default value of 'N/A'
    REGION_ID integer NOT NULL            -- Defines the REGION_ID column as an integer type, which cannot be NULL
);
