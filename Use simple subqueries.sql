SELECT MAX(UnitPrice)
 FROM SalesLT.SalesOrderDetail;

 SELECT Name, ListPrice
 FROM SalesLT.Product
 WHERE ListPrice >
     (SELECT MAX(UnitPrice)
      FROM SalesLT.SalesOrderDetail);

SELECT DISTINCT ProductID
 FROM SalesLT.SalesOrderDetail
 WHERE OrderQty >= 20;

 SELECT Name FROM SalesLT.Product
 WHERE ProductID IN
     (SELECT DISTINCT ProductID
      FROM SalesLT.SalesOrderDetail
      WHERE OrderQty >= 20);

SELECT DISTINCT Name
FROM SalesLT.Product AS p
JOIN SalesLT.SalesOrderDetail AS o
    ON p.ProductID = o.ProductID
WHERE OrderQty >= 20;