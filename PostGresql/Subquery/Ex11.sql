-- This SQL query retrieves records from the employees table where each employee's salary is the highest among all distinct salary values in the employees table.

SELECT * -- Selects all columns from the employees table (aliased as 'emp1')
FROM employees emp1 -- Specifies the table from which to retrieve data (aliased as 'emp1'), in this case, the employees table
WHERE (1) = ( -- Filters the rows to include only those where the count of distinct salary values greater than the salary of the current row is equal to 1
    SELECT COUNT(DISTINCT(emp2.salary)) -- Subquery: Counts the distinct salary values greater than the salary of the current row
    FROM employees emp2 -- Specifies the table from which to retrieve data (aliased as 'emp2'), in this case, the employees table
    WHERE emp2.salary > emp1.salary -- Filters distinct salary values greater than the salary of the current row (aliased as 'emp1')
);
