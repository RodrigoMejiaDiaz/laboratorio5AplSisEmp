SELECT Salesperson, COUNT(CustomerID) AS Customers
 FROM SalesLT.Customer
 GROUP BY Salesperson
 ORDER BY Salesperson;

 SELECT c.Salesperson, SUM(oh.SubTotal) AS SalesRevenue
 FROM SalesLT.Customer c
 JOIN SalesLT.SalesOrderHeader oh
     ON c.CustomerID = oh.CustomerID
 GROUP BY c.Salesperson
 ORDER BY SalesRevenue DESC;
 
 SELECT c.Salesperson, ISNULL(SUM(oh.SubTotal), 0.00) AS SalesRevenue
 FROM SalesLT.Customer c
 LEFT JOIN SalesLT.SalesOrderHeader oh
     ON c.CustomerID = oh.CustomerID
 GROUP BY c.Salesperson
 ORDER BY SalesRevenue DESC;