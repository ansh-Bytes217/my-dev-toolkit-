-- This SQL statement creates a new table called 'countries' with specified columns.

CREATE TABLE countries (
    COUNTRY_ID varchar(3), -- Defines a column 'COUNTRY_ID' to store country IDs as strings with a maximum length of 3 characters.
    COUNTRY_NAME varchar(45), -- Defines a column 'COUNTRY_NAME' to store country names as strings with a maximum length of 45 characters.
    REGION_ID decimal(10,0) -- Defines a column 'REGION_ID' to store region IDs as decimal numbers with a precision of 10 digits and no decimal places.
);
