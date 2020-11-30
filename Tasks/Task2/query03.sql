--Query 3
SELECT 
    sc.CustomerID,
    CASE
        WHEN
            pp.MiddleName IS NULL  THEN pp.FirstName + ' ' + pp.LastName
        ELSE pp.FirstName + ' ' + pp.MiddleName + ' ' + pp.LastName
    END AS FullName,
    ssoh.SalesOrderID,
    ssoh.OrderDate
FROM Sales.Customer AS sc
LEFT JOIN Sales.SalesOrderHeader AS ssoh 
    ON (ssoh.CustomerID = sc.CustomerID)
LEFT JOIN Person.Person AS pp
    ON (pp.BusinessEntityID = sc.PersonID)
WHERE 
    ssoh.SalesOrderID IS NULL
    OR
    ssoh.OrderDate = '2013-01-01'
ORDER BY sc.CustomerID  
;
