SELECT YEAR(SellStartDate) AS SellStartYear, ProductID, Name
 FROM SalesLT.Product
 ORDER BY SellStartYear;

 SELECT YEAR(SellStartDate) AS SellStartYear,
        DATENAME(mm,SellStartDate) AS SellStartMonth,
        DAY(SellStartDate) AS SellStartDay,
        DATENAME(dw, SellStartDate) AS SellStartWeekday,
        DATEDIFF(yy,SellStartDate, GETDATE()) AS YearsSold,
        ProductID,
        Name
 FROM SalesLT.Product
 ORDER BY SellStartYear;

 SELECT CONCAT(FirstName + ' ', LastName) AS FullName
 FROM SalesLT.Customer;

 SELECT UPPER(Name) AS ProductName,
        ProductNumber,
        ROUND(Weight, 0) AS ApproxWeight,
        LEFT(ProductNumber, 2) AS ProductType,
        SUBSTRING(ProductNumber,CHARINDEX('-', ProductNumber) + 1, 4) AS ModelCode,
        SUBSTRING(ProductNumber, LEN(ProductNumber) - CHARINDEX('-', REVERSE(RIGHT(ProductNumber, 3))) + 2, 2) AS SizeCode
 FROM SalesLT.Product;