SELECT od.SalesOrderID, od.ProductID, od.OrderQty
 FROM SalesLT.SalesOrderDetail AS od
 ORDER BY od.ProductID;

 SELECT od.SalesOrderID, od.ProductID, od.OrderQty
 FROM SalesLT.SalesOrderDetail AS od
 WHERE od.OrderQty =
     (SELECT MAX(OrderQty)
      FROM SalesLT.SalesOrderDetail AS d
      WHERE od.ProductID = d.ProductID)
 ORDER BY od.ProductID;

 SELECT o.SalesOrderID, o.OrderDate, o.CustomerID
 FROM SalesLT.SalesOrderHeader AS o
 ORDER BY o.SalesOrderID;

SELECT o.SalesOrderID, o.OrderDate,
       (SELECT CompanyName
       FROM SalesLT.Customer AS c
       WHERE c.CustomerID = o.CustomerID) AS CompanyName
 FROM SalesLT.SalesOrderHeader AS o
 ORDER BY o.SalesOrderID;