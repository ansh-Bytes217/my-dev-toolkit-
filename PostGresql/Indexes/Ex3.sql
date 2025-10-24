-- Specify the action to create an index.
CREATE INDEX idx_employees_first_last 
-- Define the target table and columns for the composite index.
ON Employees(first_name, last_name);
