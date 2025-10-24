-- This SQL statement creates a new table 'country_new' based on the result of a SELECT query from an existing table 'countries'.

CREATE TABLE country_new
AS SELECT * FROM countries;
