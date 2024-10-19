-- Write a SQL script that creates an index idx_name_first on the table names and the first letter of name.

-- Requirements:

--     Import this table dump: names.sql.zip
--     Only the first letter of name must be indexed

-- Context: Index is not the solution for any performance issue, but well used, it’s really powerful!

CREATE INDEX idx_name_first ON names (LEFT(name, 1));
-- Time: 0h 10m 00s
