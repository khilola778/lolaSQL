select * from Products
select ProductName as Name from Products
select * from Customers as Client
create table Products_Discounted(ProductName varchar(50))
insert into Products_Discounted values('doritos')
select ProductName from Products
union
select ProductName from Products_Discounted
select ProductName from Products
intersect
select ProductName from Products_Discounted
select * from Customers
select distinct CustomerName , CustomerID
from Customers

SELECT ProductName, Price,
       CASE
           WHEN Price > 1000 THEN 'High'
           ELSE 'Low'
       END AS PriceLevel
FROM Products
select ProductName, StockQuantity,
iif (StockQuantity>100, 'yes','no') as inStock from Products_Discounted

select ProductName from Products
except
