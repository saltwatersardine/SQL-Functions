<details>
      <summary>SELECT</summary>
      <br>
  
  ```sql
SELECT CustomerName, City
-- A function that helps you choose which information you want to see from a database.
-- It's like picking out the toys you want to play with from a big toy box.
  ```
</details>
<details>
      <summary>FROM</summary>
      <br>
  
  ```sql
SELECT CustomerName, City
FROM Customers;
-- Aunction that tells SQL where to get the data from that you want to look at.
-- It's like telling your parents which toy box you want to play with.
  ```
</details>
<details>
      <summary>WHERE</summary>
      <br>
  
  ```sql
SELECT *
FROM Customers
WHERE Country='Mexico';
-- A function that helps you filter information in a database based on certain criteria.
-- Its like only showing toys that are red or only showing toys that are bigger than a certain size.
  ```
</details>
<details>
      <summary>GROUP BY</summary>
      <br>
  
  ```sql
SELECT *
FROM Products
ORDER BY Price;
-- A function that helps you group similar things together in a database.
-- It's like putting all your toys of a certain color or type together in one pile.
  ```
</details>
<details>
      <summary>TRIM</summary>
      <br>
  
  ```sql
SELECT TRIM('     SQL Tutorial!     ') AS TrimmedString;
-- A function that helps you clean up extra spaces in text.
-- It's like tidying up your room and making sure everything has its own place.
  ```
</details>
<details>
      <summary>BETWEEN</summary>
      <br>
  
  ```sql
SELECT *
FROM Products
WHERE Price BETWEEN 10 AND 20;
-- A function that helps you find information that falls within a certain range.
-- It's like finding all the toys that are priced between 5 and 10. It's like looking for toys that fit a certain price.
  ```
</details>
<details>
      <summary>AND</summary>
      <br>
  
  ```sql
SELECT *
FROM Products
WHERE Price BETWEEN 10 AND 20;
-- A function that helps you combine two or more conditions to find information that meets all of them.
-- Its like finding all the toys priced between 5 AND 10. It's like looking for toys that have more than one specific trait.
  ```
</details>
<details>
      <summary>OR</summary>
      <br>
  
  ```sql
SELECT *
FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';
-- A function that helps you combine two or more conditions to find information that meets at least one of them.
-- Its like finding all the toys that are either red OR blue. It's like looking for toys that have at least one specific trait.
  ```
</details>
<details>
      <summary>DISTINCT</summary>
      <br>
  
  ```sql
SELECT DISTINCT Country
FROM Customers;
-- A function that helps you remove duplicates from a list of data.
-- It's like making sure you only have one of each toy and not two or three of the same thing.
  ```
</details>
<details>
      <summary>INSERT INTO</summary>
      <br>
  
  ```sql
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');
-- A function that helps you add new information to a database.
-- It's like adding a new toy to your toy box.
```
</details> 
<details> 
    <summary>UPDATE</summary> 
    <br> 
  
  ```sql 
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City = 'Frankfurt'
WHERE CustomerID = 1; 
-- A function that helps you change information that already exists in a database. 
-- It's like painting a toy box a different color or putting new stickers on it. 
  ``` 
</details>
<details> 
  <summary>CREATE TABLE</summary> 
  <br> 
  
  ```sql 
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
); 
  -- A function that helps you make a new table in a database. 
  -- It's like creating a new box to put your toys in. 
  ``` 
</details> 
<details> 
  <summary>DROP TABLE</summary> 
  <br> 
  
  ```sql 
DROP TABLE Shippers;
  -- Afunction that helps you delete a table from a database. 
  -- It's like throwing away a box you don't need anymore. 
  ``` 
</details> 
<details> 
  <summary>LEN</summary> 
  <br> 
  
  ```sql 
  SELECT LEN('Apple'); 
  -- A function that helps you find the length of a piece of text, like a word or a sentence. 
  -- It's like counting how many letters are in a word. 
  ``` 
</details> 
<details> 
  <summary>SUBSTR</summary> 
  <br> 
  
  ```sql 
  SELECT SUBSTR("SQL Tutorial", 5, 3) AS ExtractString; 
  -- A function that helps you find a smaller piece of text within a larger piece of text, like finding a word in a sentence. 
  -- It's like finding a hidden toy inside a toy box.
  -- Extracts a substring from a string (starting at any position), 1. Position in string, 2. How many characters.
  ``` 
</details> 
<details> 
  <summary>CAST</summary> 
  <br> 
  
  ```sql 
  SELECT CAST("2017-08-29" AS DATE)
  SELECT coupon::iNT 
  -- A function that helps you change the type of data in a database, like changing a number to a text string or vice versa. 
  -- It's like turning a toy car into a toy truck or vice versa.
  -- Can use :: as short form notation, eg coupon::INT

  ```
</details> 
<details> 
  <summary>ORDER BY</summary> 
  <br> 
  
  ```sql 
 SELECT *
 FROM Products
 ORDER BY Price; 
  -- Is like lining up toys in a certain way. 
  -- You can choose which order to put them in based on different things, like their color or their size. 
  ``` 
</details> 
<details> 
  <summary>CONCAT</summary> 
  <br> 
  
  ```sql 
  SELECT CONCAT(Address, " ", PostalCode, " ", City) AS Address
  FROM Customers; 
  -- A function that helps you combine two or more pieces of text into one piece of text. 
  -- It's like sticking two toys together to make one toy. 
  -- For example, if you CONCAT a toy car and a toy boat, you might end up with a toy car-boat. 
  ``` 
</details> 
<details> 
  <summary>CONCAT_WS</summary> 
  <br> 
  
  ```sql 
  SELECT CustomerName, CONCAT_WS(" ", Address, PostalCode, City) AS Address
  FROM Customers;
  -- Is like CONCAT, but you get to choose what to put in between the two toys you're sticking together. 
  -- It's like choosing which kind of glue to use. 
  ```
</details> 
  <details> 
    <summary>COALESCE</summary> 
    <br> 
    
  ```sql 
    SELECT COALESCE(NULL, NULL, NULL, 'W3Schools.com', NULL, 'Example.com'); 
    -- A function that helps you choose the first non-null value from a list of values. 
    -- It's like picking the first toy you see that's not broken or missing a part. 
    -- Returns the first non-null value in a list.
  ``` 
  </details> 
  <details> 
    <summary>INNER JOIN</summary> 
    <br> 
    
  ```sql 
    SELECT Products.ProductID, Products.ProductName, Categories.CategoryName
    FROM Products
    INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;   
    -- A function that helps you combine information from two or more tables in a database based on a common column. 
    -- It's like taking two sets of toys and finding all the toys that match between the two sets. 
    -- You'll end up with a new set of toys that only includes the toys that match.
    -- Selects records that have matching values in both tables.
   ``` 
  </details> 
  <details> 
    <summary>LEFT JOIN</summary> 
    <br> 
    
  ```sql 
    SELECT Customers.CustomerName, Orders.OrderID
    FROM Customers
    LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
    ORDER BY Customers.CustomerName;
    -- A function that helps you combine information from two tables based on a common column. 
    -- It's like having two toy boxes and taking all the toys from the first box, 
    -- and any toys from the second box that match the toys from the first box. 
    -- returns all records from the left table (table1), and the matching records from the right table (table2).
  ``` 
  </details> 
  <details> 
    <summary>RIGHT JOIN</summary> 
    <br> 
    
  ```sql 
    SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
    FROM Orders
    RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
    ORDER BY Orders.OrderID;
    -- A function that helps you combine information from two tables based on a common column but from the second table. 
    -- It's like having two toy boxes again, but this time you take all the toys from the second box and any toys from the first           box that match the toys from the second box. 
  ``` 
  </details> 
  <details> 
    <summary>OUTER JOIN</summary> 
    <br> 
    
   ```sql 
    SELECT Customers.CustomerName, Orders.OrderID
    FROM Customers
    FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
    ORDER BY Customers.CustomerName;
    -- A function that helps you combine information from two tables, including any information that doesn't have a match in the           other table. 
    -- You take all the toys from both boxes and include any matching toys. 
    -- If there are any toys that don't have a match in the other box, they'll still be included, but with NULL values. 
   ``` 
  </details> 
  <details> 
    <summary>IS NOT NULL</summary> 
    <br> 
    
  ```sql 
    CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
    );
    -- Is like checking to see if a toy box has any toys in it. 
    -- If it does, you'll get a "true" answer, and if it doesn't, you'll get a "false" answer. 
   ``` 
  </details> 
  <details> 
    <summary>COUNT DISTINCT</summary> 
    <br> 
    
  ```sql 
    SELECT COUNT(DISTINCT cust_code) AS "Number of employees"
    FROM orders;
    -- It's like counting the number of different toys in a toy box. 
    -- For example, you might have three red cars, but you'd only count them as one toy since they're all the same. 
   ``` 
  </details> 
  <details> 
    <summary>AVG</summary> 
    <br> 
    
   ```sql 
    SELECT AVG(Price)
    FROM Products; 
    -- Is like finding the average size of all the toys in a toy box. 
    -- You add up all the sizes of the toys and then divide by the number of toys to get the average size. 
   ``` 
  </details> 
  <details> 
    <summary>HAVING</summary> 
    <br> 
    
  ```sql 
    SELECT COUNT(CustomerID), Country
    FROM Customers
    GROUP BY Country
    HAVING COUNT(CustomerID) > 5;
    -- A function that helps you filter information after you have grouped it together based on a certain condition. 
    -- Imagine you have a bunch of toys, and you want to group them by color. 
    -- Once you group them, you can use HAVING to only show the groups that have more than a certain number of toys. 
  ```
  </details> 
  <details> 
    <summary>CASE</summary> 
    <br> 
    
  ```sql 
    SELECT OrderID, Quantity,
    CASE
      WHEN Quantity > 30 THEN 'The quantity is greater than 30'
      WHEN Quantity = 30 THEN 'The quantity is 30'
      ELSE 'The quantity is under 30'
    END AS QuantityText
    FROM OrderDetails; 
    -- A function that helps you make a decision in SQL based on certain conditions. 
    -- Imagine you have a bunch of different toys and you want to group them by size. 
    -- But some of the toys are big, some are medium, and some are small.
    -- You can use CASE to say "if a toy is bigger than a certain size, put it in the 'big' group. 
    -- If it's medium-sized, put it in the 'medium' group. 
    -- And if it's small, put it in the 'small' group". 
    -- (WHEN...THEN - ELSE) 
   ``` 
  </details> 
  <details> 
    <summary>IF</summary> 
    <br> 
    
  ```sql 
    SELECT OrderID, Quantity, IF(Quantity>10, "MORE", "LESS")
    FROM OrderDetails; 
    -- A function that helps you make a decision in SQL based on a certain condition. 
    -- It's like deciding which toy to play with based on whether it's raining outside or not. 
   ``` 
  </details> 
  <details> 
    <summary>COUNT</summary> 
    <br> 
    
  ```sql 
    SELECT COUNT(ProductName)
    FROM Products; 
    -- A function that helps you count the number of rows in a table 
    -- or the number of times a certain value appears in a column.
    -- It's like counting how many toys you have in a box or how many blue toys you have. 
   ``` 
  </details> 
