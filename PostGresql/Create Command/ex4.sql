-- This SQL statement creates a new table called 'dup_countries' by copying both the structure and data from the 'countries' table.

CREATE TABLE dup_countries -- Creates a new table named 'dup_countries'.
AS -- Specifies that the following query will be used to generate the table.
SELECT * -- Selects all columns and rows from the 'countries' table.
FROM countries; -- Specifies the source table from which data is being copied.
