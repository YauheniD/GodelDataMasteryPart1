--Query 9
SELECT
    SC.CustomerID,
    SSOH.OrderDate,
    COALESCE(DATEDIFF(DAY,LAG(SSOH.OrderDate) OVER (PARTITION BY SC.CustomerID ORDER BY SSOH.OrderDate),SSOH.OrderDate), 0) AS DaysSinceLastOrder
FROM Sales.Customer AS SC
JOIN Sales.SalesOrderHeader AS SSOH 
    ON SC.CustomerID = ssoh.CustomerID
JOIN Person.Person AS PP 
    ON pp.BusinessEntityID = SC.PersonID
WHERE PP.LastName = 'Smith'
ORDER BY CustomerID, OrderDate
;
