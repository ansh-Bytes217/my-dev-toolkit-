-- This SQL query retrieves location details along with associated country and department information using natural joins.

SELECT location_id, -- Selects the location_id column
       street_address, -- Selects the street_address column
city, -- Selects the city column
       state_province, -- Selects the state_province column
       country_name, -- Selects the country_name column
       department_name -- Selects the department_name column
FROM locations -- Specifies the first table from which to retrieve data, in this case, the locations table
NATURAL JOIN countries -- Performs a natural join with the countries table to include associated country information
NATURAL JOIN departments; -- Performs a natural join with the departments table to include associated department information
