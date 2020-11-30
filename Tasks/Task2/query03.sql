--Query 3
SELECT 
    Sc.CustomerID,	
    P.FirstName + ' ' + COALESCE(P.MiddleName + ' ', '') + P.LastName as CustomerFullName,
    SOI.SalesOrderID,
    SOI.OrderDate
FROM Sales.SalesOrderHeader SOI
RIGHT JOIN Sales.Customer SC 
    ON SC.CustomerID = SOI.CustomerID
LEFT JOIN Person.Person P 
    ON SC.PersonID = P.BusinessEntityID
WHERE 
    SOI.OrderDate = '2013-01-01'
    OR
    SOI.OrderDate IS NULL
ORDER BY Sc.CustomerID
;
