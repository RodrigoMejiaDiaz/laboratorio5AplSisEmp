SELECT CAST(ProductID AS varchar(5)) + ': ' + Name AS ProductName
 FROM SalesLT.Product;

 SELECT SellStartDate,
    CONVERT(nvarchar(30), SellStartDate) AS ConvertedDate,
     CONVERT(nvarchar(30), SellStartDate, 126) AS ISO8601FormatDate
 FROM SalesLT.Product;

SELECT Name, TRY_CAST(Size AS Integer) AS NumericSize
FROM SalesLT.Product;