SELECT pcat.Name AS ParentCategory, cat.Name AS SubCategory
 FROM SalesLT.ProductCategory as cat
 JOIN SalesLT.ProductCategory pcat
     ON cat.ParentProductCategoryID = pcat.ProductCategoryID
 ORDER BY ParentCategory, SubCategory;