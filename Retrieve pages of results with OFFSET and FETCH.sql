SELECT Name, ListPrice
 FROM SalesLT.Product
 ORDER BY Name OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

 SELECT Name, ListPrice
 FROM SalesLT.Product
 ORDER BY Name OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY;