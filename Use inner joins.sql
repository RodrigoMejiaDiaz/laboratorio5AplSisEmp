 SELECT SalesLT.Product.Name As ProductName, SalesLT.ProductCategory.Name AS Category
 FROM SalesLT.Product
 INNER JOIN SalesLT.ProductCategory
 ON SalesLT.Product.ProductCategoryID = SalesLT.ProductCategory.ProductCategoryID;

 SELECT SalesLT.Product.Name As ProductName, SalesLT.ProductCategory.Name AS Category
 FROM SalesLT.Product
 JOIN SalesLT.ProductCategory
     ON SalesLT.Product.ProductCategoryID = SalesLT.ProductCategory.ProductCategoryID;

SELECT p.Name As ProductName, c.Name AS Category
 FROM SalesLT.Product AS p
 JOIN SalesLT.ProductCategory As c
     ON p.ProductCategoryID = c.ProductCategoryID;

SELECT oh.OrderDate, oh.SalesOrderNumber, p.Name As ProductName, od.OrderQty, od.UnitPrice, od.LineTotal
 FROM SalesLT.SalesOrderHeader AS oh
 JOIN SalesLT.SalesOrderDetail AS od
     ON od.SalesOrderID = oh.SalesOrderID
 JOIN SalesLT.Product AS p
     ON od.ProductID = p.ProductID
 ORDER BY oh.OrderDate, oh.SalesOrderID, od.SalesOrderDetailID;