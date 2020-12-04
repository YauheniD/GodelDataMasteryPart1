--Query 9
SELECT
    sc.CustomerID,
    ssoh.OrderDate,
    CASE
        WHEN 
            LAG(ssoh.OrderDate) OVER (PARTITION BY sc.CustomerID ORDER BY ssoh.OrderDate) IS NULL THEN 0
        ELSE
            DATEDIFF(DAY,LAG(ssoh.OrderDate) OVER (PARTITION BY sc.CustomerID ORDER BY ssoh.OrderDate),ssoh.OrderDate)
    END AS DaysSinceLastOrder
FROM Sales.Customer AS sc
JOIN Sales.SalesOrderHeader AS ssoh ON (sc.CustomerID = ssoh.CustomerID)
JOIN Person.Person AS pp ON (pp.BusinessEntityID = sc.PersonID)
WHERE pp.LastName = 'Smith'
ORDER BY CustomerID, OrderDate
;
