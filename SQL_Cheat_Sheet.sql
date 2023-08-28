-- 1. CREATE a new TABLE
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

-- 2. INSERT data INTO the table (adds values to a row)
INSERT INTO users (username, email, password)
VALUES ('john_doe', 'john.doe@example.com', 'johns_password');

-- 3. SELECT ALL rows FROM a table
SELECT * FROM users;

-- 4. SELECT specific columns FROM a table
SELECT id, username, email FROM users;

-- 5. Filter rows using a WHERE clause
SELECT * FROM users WHERE username = 'john_doe';

-- 6. Update data in the table (update a pre-existing row)
UPDATE users SET email = 'john.doe_updated@example.com' WHERE username = 'john_doe';

-- 7. DELETE a row from the table
DELETE FROM users WHERE username = 'john_doe';

-- 8. ADD a new COLUMN to the table
ALTER TABLE users ADD COLUMN age INT;

-- 9. DROP a COLUMN from the table
ALTER TABLE users DROP COLUMN age;

-- 10. ORDER rows BY a specific column
SELECT * FROM users ORDER BY username ASC;

-- 11. GROUP BY rows and apply aggregation functions
SELECT COUNT(*), country FROM users GROUP BY country;

-- 12. Join two tables together (INNER JOIN)
SELECT u.username, o.order_id FROM users u
    JOIN orders o ON u.id = o.user_id;

-- 13. Left Join (LEFT OUTER JOIN)
SELECT u.username, o.order_id FROM users u
    LEFT JOIN orders o ON u.id = o.user_id;

-- 14. Right Join (RIGHT OUTER JOIN)
SELECT u.username, o.order_id FROM users u
    RIGHT JOIN orders o ON u.id = o.user_id;

-- 15. Subquery
SELECT username FROM users WHERE id IN (
    SELECT user_id
    FROM orders
    WHERE order_total > 100);

-- 16. Select DISTINCT values from a column
SELECT DISTINCT country FROM users;

-- 17. COUNT the number of distinct values in a column
SELECT COUNT(DISTINCT country) FROM users;

-- 18. LIMIT the number of rows returned
SELECT * FROM users LIMIT 10;

-- 19. Select rows using pattern matching with LIKE
SELECT * FROM users WHERE username LIKE 'j%';

-- 20. Select rows using multiple conditions with AND
SELECT * FROM users WHERE country = 'USA' AND age > 18;

-- 21. Select rows using multiple conditions with OR
SELECT * FROM users WHERE country = 'USA' OR country = 'Canada';

-- 22. Use aggregate functions to summarize data (AVG, SUM, MIN, MAX)
SELECT AVG(age), SUM(age), MIN(age), MAX(age) FROM users;

-- 23. Group rows, apply aggregation functions, and filter using HAVING
SELECT country, COUNT(*) FROM users
    GROUP BY country
    HAVING COUNT(*) > 10;

-- 24. Rename a column or table AS an alias
    1. SELECT AVG(salary) AS average_salary FROM employees;
    2. SELECT first_name, ' ', last_name AS full_name FROM customers;
    3. SELECT demo, sal FROM employee_demographics AS demo 
        JOIN employee_salary AS sal
        ON demo.employeeID = sal.employeeID;

-- 25. NULL constraint
    1. SELECT salary FROM employ_salaries WHERE salary IS NOT NULL;
    2. SELECT salary FROM employ_salaries WHERE salary IS NULL;

-- 26. UNION of two or more SELECT statements. (Must have the same number of columns)
SELECT id, name, age FROM employee_data UNION 
    SELECT id, department, salary FROM pay_data;

-- 27. CASE (if-else statement)
1. SELECT name, surname, age                             2. SELECT name, surname, age
    CASE                                                     CASE
        WHEN age > 40 THEN 'old'                                 WHEN job_title = 'salesman' THEN salary + (salary * .10)
        WHEN age BETWEEN 18 AND 40 THEN 'young'                  WHEN job_title = 'accountant' THEN salary + (salary * .05)
        ELSE 'baby'                                              ELSE salary + (salary * .03)
    END                                                      END AS new_salary
    FROM employee_data WHERE age IS NOT NULL                 FROM employee_data WHERE salary IS NOT NULL                     
    ORDER BY age;                                            ORDER BY salary;

-- 28 Specify the column on which we need to perform aggregation by using PARTITION BY
SELECT first_name, last_name, gender, salary, 
COUNT(gender) OVER (PARTITION BY gender) AS total_gender, AVG(salary) OVER (PARTITION BY gender) AS average_salary
FROM demographics;

--29 Define a temporary named result set with CTE (Common Table Expression)
WITH CTE_Employee AS 
(SELECT first_name, last_name, gender, salary, 
COUNT(gender) OVER (PARTITION BY gender) AS total_gender
FROM demographics
WHERE salary > '45000');

-- 30. Using TEMP TABLES to get a subset of data temporarily 
CREATE TABLE #temp_employee (
JobTitle varchar(100),
EmployeesPerJob int,
AvgAge int,
AvgSalary int
) -- *You can also insert directly into the temp table from an existing table*
INSERT INTO #temp_employee 
-- 31. String Functions - TRIM, LTRIM (left trim), RTRIM (right trim), Replace, Substring, Upper, Lower

1. SELECT employeeID, TRIM(employeeID) AS IDTRIM
FROM employee_errors 

2. SELECT employeeID, RTRIM(employeeID) as IDRTRIM
FROM employee_errors 

3. SELECT employeeID, LTRIM(employeeID) as IDLTRIM
FROM employee_errors 

4. SELECT last_name, REPLACE(last_name, '- Fired', '') as last_name_fixed
FROM employee_errors

5. SELECT Substring(first_name,1,3), Substring(last_name,1,3)
FROM employee_errors AS 

6. SELECT first_name, LOWER(first_name)
from employee_errors

7. SELECT First_name, UPPER(First_Name)
from employee_errors

-- 31. Group of STORED PROCEDURES in sql statements that are created in that database 
1. CREATE PROCEDURE test AS 
SELECT * FROM employees

2. CREATE PROCEDURE temp_employee
AS
DROP TABLE IF EXISTS #temp_employee
Create table #temp_employee (
job_title varchar(100),
employees_per_job int,
average_age int,
average_salary int
)

INSERT INTO #temp_employee
SELECT job_title, COUNT(job_title), AVG(age), AVG(salary)
FROM demographics GROUP BY job_title

3. CREATE PROCEDURE temp_employee2 
@JobTitle nvarchar(100)
AS
DROP TABLE IF EXISTS #temp_employee3
CREATE TABLE #temp_employee3 (
job_title varchar(100),
employees_per_job int ,
average_age int,
average_salary int
)

Insert into #temp_employee3
SELECT job_title, Count(job_title), AVG(age), AVG(salary)
FROM demographics
WHERE job_title = @job_title
GROUP BY job_title

exec temp_employee2 @jobt_title = 'salesman'
exec temp_employee2 @job_title = 'accountant'

-- 32. SUBQUERIES -in the Select, From, and Where Statement)












