SELECT Name, Color, Size
 FROM SalesLT.Product
 WHERE ProductModelID = 6
 ORDER BY Name;

 SELECT Name, Color, Size
 FROM SalesLT.Product
 WHERE ProductModelID <> 6
 ORDER BY Name;

 SELECT Name, ListPrice
 FROM SalesLT.Product
 WHERE ListPrice > 1000.00
 ORDER BY ListPrice;

 SELECT Name, ListPrice
 FROM SalesLT.Product
 WHERE Name LIKE 'HL Road Frame %';

 SELECT Name, ListPrice
 FROM SalesLT.Product
 WHERE ProductNumber LIKE 'FR-_[0-9][0-9]_-[0-9][0-9]';

 SELECT Name, ListPrice
FROM SalesLT.Product
WHERE SellEndDate IS NOT NULL;

SELECT Name
FROM SalesLT.Product
WHERE SellEndDate BETWEEN '2006/1/1' AND '2006/12/31';

SELECT ProductCategoryID, Name, ListPrice
FROM SalesLT.Product
WHERE ProductCategoryID IN (5,6,7);

SELECT ProductCategoryID, Name, ListPrice, SellEndDate
FROM SalesLT.Product
WHERE ProductCategoryID IN (5,6,7) AND SellEndDate IS NULL;

SELECT Name, ProductCategoryID, ProductNumber
FROM SalesLT.Product
WHERE ProductNumber LIKE 'FR%' OR ProductCategoryID IN (5,6,7);