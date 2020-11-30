--Query 7
SELECT DISTINCT 
    sc.CustomerID,
    CASE
        WHEN
            pp.MiddleName IS NULL  THEN pp.FirstName + ' ' + pp.LastName
        ELSE pp.FirstName + ' ' + pp.MiddleName + ' ' + pp.LastName
    END AS FullName,
    CASE 
        WHEN 
            ssoh.SalesOrderID IS NOT NULL THEN 'Yes' 
        ELSE 'No' 
    END AS HasOrderOn2013
FROM Sales.Customer AS sc
LEFT JOIN Sales.SalesOrderHeader AS ssoh 
    ON (ssoh.CustomerID = sc.CustomerID AND YEAR(ssoh.OrderDate) = 2013)
LEFT JOIN Person.Person AS pp 
    ON (pp.BusinessEntityID = sc.PersonID)
WHERE pp.FirstName = 'Zoe'
ORDER BY sc.CustomerID
;
