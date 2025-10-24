-- Specify the action to create a unique index.
CREATE UNIQUE INDEX idx_employees_email 
-- Define the target table and column for the unique index.
ON Employees(email);
