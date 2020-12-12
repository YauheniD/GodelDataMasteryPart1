--Query 3
SELECT 
    pp.BusinessEntityID,
    pp.FirstName,
    pp.LastName
FROM Person.Person AS pp
JOIN Sales.SalesPerson AS sp
    ON sp.BusinessEntityID = pp.BusinessEntityID
LEFT JOIN Sales.Customer AS sc 
    ON sc.PersonID = pp.BusinessEntityID
LEFT JOIN Sales.SalesOrderHeader AS ssoh
    ON sc.CustomerID = ssoh.CustomerID
EXCEPT
SELECT 
    pp.BusinessEntityID,
    pp.FirstName,
    pp.LastName
FROM Person.Person AS pp
JOIN Sales.SalesPerson AS sp
    ON sp.BusinessEntityID = pp.BusinessEntityID
LEFT JOIN Sales.Customer AS sc 
    ON sc.PersonID = pp.BusinessEntityID
LEFT JOIN Sales.SalesOrderHeader AS ssoh
    ON sc.CustomerID = ssoh.CustomerID
WHERE ssoh.ModifiedDate >= '2008-08-01'
ORDER BY BusinessEntityID 
;
