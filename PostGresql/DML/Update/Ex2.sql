-- This SQL statement updates the 'email' and 'commission_pct' columns in the 'employees' table,
-- setting the 'email' column to 'not available' and the 'commission_pct' column to 0.10 for all rows.

UPDATE employees SET email='not available', commission_pct=0.10;
