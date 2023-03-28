-- 1. Create a new table
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

-- 2. Insert data into the table
INSERT INTO users (username, email, password)
VALUES ('john_doe', 'john.doe@example.com', 'johns_password');

-- 3. Select all rows from a table
SELECT * FROM users;

-- 4. Select specific columns from a table
SELECT id, username, email FROM users;

-- 5. Filter rows using a WHERE clause
SELECT * FROM users WHERE username = 'john_doe';

-- 6. Update data in the table
UPDATE users SET email = 'john.doe_updated@example.com' WHERE username = 'john_doe';

-- 7. Delete a row from the table
DELETE FROM users WHERE username = 'john_doe';

-- 8. Add a new column to the table
ALTER TABLE users ADD COLUMN age INT;

-- 9. Drop a column from the table
ALTER TABLE users DROP COLUMN age;

-- 10. Order rows by a specific column
SELECT * FROM users ORDER BY username ASC;

-- 11. Group rows and apply aggregation functions
SELECT COUNT(*), country FROM users GROUP BY country;

-- 12. Join two tables together (INNER JOIN)
SELECT u.username, o.order_id
FROM users u
JOIN orders o ON u.id = o.user_id;

-- 13. Left Join (LEFT OUTER JOIN)
SELECT u.username, o.order_id
FROM users u
LEFT JOIN orders o ON u.id = o.user_id;

-- 14. Right Join (RIGHT OUTER JOIN)
SELECT u.username, o.order_id
FROM users u
RIGHT JOIN orders o ON u.id = o.user_id;

-- 15. Subquery
SELECT username
FROM users
WHERE id IN (
    SELECT user_id
    FROM orders
    WHERE order_total > 100);

-- 16. Create an index
CREATE INDEX idx_users_username ON users (username);

-- 17. Drop an index
DROP INDEX idx_users_username ON users;

-- 18. Select distinct values from a column
SELECT DISTINCT country FROM users;

-- 19. Count the number of distinct values in a column
SELECT COUNT(DISTINCT country) FROM users;

-- 12. Limit the number of rows returned
SELECT * FROM users LIMIT 10;

-- 21. Select rows using pattern matching with LIKE
SELECT * FROM users WHERE username LIKE 'j%';

-- 22. Select rows using multiple conditions with AND
SELECT * FROM users WHERE country = 'USA' AND age > 18;

-- 23. Select rows using multiple conditions with OR
SELECT * FROM users WHERE country = 'USA' OR country = 'Canada';

-- 24. Use aggregate functions to summarize data (AVG, SUM, MIN, MAX)
SELECT AVG(age), SUM(age), MIN(age), MAX(age) FROM users;

-- 25. Group rows, apply aggregation functions, and filter using HAVING
SELECT country, COUNT(*)
FROM users
GROUP BY country
HAVING COUNT(*) > 10;
