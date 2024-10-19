-- Write a SQL script that creates a table users following these requirements:

--     With these attributes:
--         id, integer, never null, auto increment and primary key
--         email, string (255 characters), never null and unique
--         name, string (255 characters)
--         country, enumeration of countries: US, CO and TN, never null (= default will be the first element of the enumeration, here US)
--     If the table already exists, your script should not fail
--     Your script can be executed on any database

-- Context: Using an enumeration will enforce your business rules and avoid bugs in your application

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US'
);