SELECT *
FROM Employees
WHERE Salary >= 60000 AND Department = 'HR'
SELECT ISNULL(Email, 'noemail@example.com') AS Email
FROM Employees

SELECT *
FROM Products
WHERE Price BETWEEN 50 AND 100

SELECT DISTINCT Category, ProductName
FROM Products

SELECT DISTINCT Category, ProductName
FROM Products
ORDER BY ProductName DESC

SELECT *
FROM Products
ORDER BY Price DESC
LIMIT 10

SELECT COALESCE(FirstName, LastName) AS Name
FROM Employees

SELECT DISTINCT Category, Price
FROM Products

SELECT *
FROM Employees
WHERE (Age BETWEEN 30 AND 40) OR Department = 'Marketing'

SELECT *
FROM Products
WHERE Price <= 1000 AND Stock > 50
ORDER BY Stock ASC SELECT *
FROM Products
WHERE ProductName LIKE '%e%'

SELECT *
FROM Employees
WHERE Department IN ('HR', 'IT', 'Finance')

SELECT *
FROM Customers
ORDER BY City ASC, PostalCode DESC
