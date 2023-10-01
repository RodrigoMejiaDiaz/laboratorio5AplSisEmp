SELECT TOP (20) Name, ListPrice
 FROM SalesLT.Product
 ORDER BY ListPrice DESC;

 SELECT TOP (20) WITH TIES Name, ListPrice
 FROM SalesLT.Product
 ORDER BY ListPrice DESC;

 SELECT TOP (20) PERCENT WITH TIES Name, ListPrice
 FROM SalesLT.Product
 ORDER BY ListPrice DESC;