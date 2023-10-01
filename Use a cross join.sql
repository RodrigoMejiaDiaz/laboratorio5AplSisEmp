SELECT p.Name, c.FirstName, c.LastName, c.EmailAddress
 FROM SalesLT.Product as p
 CROSS JOIN SalesLT.Customer as c;