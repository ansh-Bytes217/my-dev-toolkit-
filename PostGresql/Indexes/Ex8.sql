-- Specify the action to create an index.
CREATE INDEX idx_employees_department_id 
-- Define the target table and column for the index.
ON Employees(department_id);
