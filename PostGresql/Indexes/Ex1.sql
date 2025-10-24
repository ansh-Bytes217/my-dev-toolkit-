-- Specify the action to create an index.
CREATE INDEX idx_employees_lastname 
-- Define the target table and column for the index.
ON Employees(last_name);
