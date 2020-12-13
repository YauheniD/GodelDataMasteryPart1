--Query 3
SELECT DISTINCT
    P.BusinessEntityID,
    P.FirstName,
    P.LastName
FROM Person.Person P
JOIN Sales.SalesPerson SP
    ON SP.BusinessEntityID = P.BusinessEntityID
LEFT JOIN Sales.Customer SC 
    ON SC.PersonID = P.BusinessEntityID
LEFT JOIN Sales.SalesOrderHeader SOI
    ON SC.CustomerID = SOI.CustomerID
EXCEPT
SELECT DISTINCT
    P.BusinessEntityID,
    P.FirstName,
    P.LastName
FROM Person.Person P
JOIN Sales.SalesPerson SP
    ON SP.BusinessEntityID = P.BusinessEntityID
LEFT JOIN Sales.Customer SC 
    ON SC.PersonID = P.BusinessEntityID
LEFT JOIN Sales.SalesOrderHeader SOI
    ON SC.CustomerID = SOI.CustomerID
WHERE SOI.ModifiedDate >= '2008-08-01'
ORDER BY BusinessEntityID 
;
