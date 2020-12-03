--Query  3
SELECT c.CustomerID,
       CASE
           WHEN s.SalesOrderID IS NULL THEN NULL
           WHEN p.MiddleName IS NULL THEN  CONCAT(p.FirstName, ' ', p.LastName)
           ELSE  CONCAT(p.FirstName, ' ', p.MiddleName, ' ', p.LastName)
       END as CustomerFullName,
       s.SalesOrderID,
       s.OrderDate
FROM Sales.Customer as c
LEFT JOIN Person.Person as p 
       ON c.PersonID = p.BusinessEntityID
LEFT JOIN Sales.SalesOrderHeader as s 
       ON c.CustomerID = s.CustomerID
WHERE s.CustomerID IS NULL
      OR
      s.OrderDate = CONVERT(DATETIME, '20130101', 101)
ORDER BY 1
;
