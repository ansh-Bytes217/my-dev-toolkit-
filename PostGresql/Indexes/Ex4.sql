-- Specify the action to create an index without locking writes.
CREATE INDEX CONCURRENTLY idx_employees_hire_date 
-- Define the target table and column for the index.
ON Employees(hire_date);
