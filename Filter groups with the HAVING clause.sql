SELECT Salesperson, COUNT(CustomerID) AS Customers
 FROM SalesLT.Customer
 GROUP BY Salesperson
 HAVING COUNT(CustomerID) > 100
 ORDER BY Salesperson;