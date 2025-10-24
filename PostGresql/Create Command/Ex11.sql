-- This SQL statement creates a new table named 'countries' if it does not already exist,
-- defining the structure and constraints for the table columns.

CREATE TABLE IF NOT EXISTS countries ( 
    COUNTRY_ID SERIAL PRIMARY KEY, -- Defines an auto-incrementing integer column 'COUNTRY_ID' as the primary key for the table.
    COUNTRY_NAME varchar(40) NOT NULL, -- Defines a column 'COUNTRY_NAME' to store country names as strings with a maximum length of 40 characters. The column cannot contain NULL values.
    REGION_ID decimal(10,0) NOT NULL -- Defines a column 'REGION_ID' to store region IDs as decimal numbers with a precision of 10 digits and no decimal places. The column cannot contain NULL values.
);
