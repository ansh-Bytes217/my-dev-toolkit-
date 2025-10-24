-- This SQL statement creates a new table called 'dup_countries' by copying the structure of the 'countries' table without copying any data.

CREATE TABLE dup_countries AS 
(
    SELECT * -- Selects all columns and rows from the 'countries' table.
    FROM countries
)  
WITH NO DATA; -- Specifies that the newly created 'dup_countries' table should not contain any data.
