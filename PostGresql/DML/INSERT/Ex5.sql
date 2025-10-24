-- This SQL statement inserts data into the 'countries' table by selecting all rows from the 'country_new' table.

INSERT INTO countries
SELECT * FROM country_new;
