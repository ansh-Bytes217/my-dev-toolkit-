-- Specify the action to create a partial index.
CREATE INDEX idx_orders_active 
-- Define the target table and column for the index.
ON Orders(order_date) 
-- Add a condition to limit the index to rows with active status.
WHERE status = 'active';
