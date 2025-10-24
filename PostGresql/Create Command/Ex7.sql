-- This SQL statement creates a new table named 'countries' if it does not already exist,
-- defining the structure and constraints for the table columns.

CREATE TABLE IF NOT EXISTS countries ( 
    COUNTRY_ID varchar(2), -- Defines a column 'COUNTRY_ID' to store country IDs as strings with a maximum length of 2 characters. This column can contain NULL values.
    COUNTRY_NAME varchar(40), -- Defines a column 'COUNTRY_NAME' to store country names as strings with a maximum length of 40 characters. This column can contain NULL values.
CHECK(COUNTRY_NAME IN ('Italy', 'India', 'China')), -- Defines a check constraint to ensure that the 'COUNTRY_NAME' value is one of 'Italy', 'India', or 'China'.
    REGION_ID decimal(10,0) -- Defines a column 'REGION_ID' to store region IDs as decimal numbers with a precision of 10 digits and no decimal places. This column can contain NULL values.
);
