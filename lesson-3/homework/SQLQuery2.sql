create table Products(ProductID int, ProductName varchar(50), Price DECIMAL(10,2))
insert into Products values (1,'cola', 7000)
insert into Products values (2, 'chocolate', 9000)
insert into Products values (3, 'fanta', 6000)
select ProductName, count (*)
From Products
group by ProductName
having count (*) > 1
alter table Products 
add constraint uniqueee unique
(ProductName)
--this query deletes duplicate product names, keeping only the first
WITH CTE AS (
  SELECT *,
         ROW_NUMBER() OVER (PARTITION BY ProductName ORDER BY ProductID) AS rn
  FROM Products
)
DELETE FROM CTE
WHERE ProductName = 'cola' AND rn > 1;
select * from Products
create table Categories (CategoryID int primary key, CategoryName varchar(50) unique)
ALTER TABLE Products
ADD CategoryID INT,  
    CONSTRAINT FK_Products_Categories
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
	
ALTER TABLE Products
ADD Stock INT NOT NULL DEFAULT 0
SELECT ProductID, ProductName, ISNULL(Price, 0) AS Price
FROM Products
create table Customers (
CustomerID int primary key,
CustomerName varchar(100),
age int,
constraint CHK_Age_Adult check
(Age >= 18))
create table identitty (chocolate int identity(100,10))
create table OrderDetails (OrderID int, ProductID int, Quantity int, constraint PK primary key (OrderID, ProductID))
