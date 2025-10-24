-- This SQL query retrieves distinct salary values where each salary is in the bottom 4 distinct salary values in the employees table.

SELECT DISTINCT salary -- Selects distinct salary values from the employees table (aliased as 'e1')
FROM employees e1 -- Specifies the table from which to retrieve data (aliased as 'e1'), in this case, the employees table
WHERE 4 = ( -- Filters the rows to include only those where the count of distinct salary values that are greater than or equal to the salary of the current row is equal to 4
    SELECT COUNT(DISTINCT salary) -- Subquery: Counts the distinct salary values that are greater than or equal to the salary of the current row
    FROM employees e2 -- Specifies the table from which to retrieve data (aliased as 'e2'), in this case, the employees table
    WHERE e1.salary >= e2.salary -- Filters distinct salary values that are greater than or equal to the salary of the current row (aliased as 'e1')
);
