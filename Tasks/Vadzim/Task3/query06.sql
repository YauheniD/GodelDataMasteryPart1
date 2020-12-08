--Query 6
SELECT
    CustomerID,
    (SELECT OrderDate FROM Sales.SalesOrderHeader  WHERE  CustomerID = H.CustomerID)
FROM Sales.Customer as h
WHERE 
    CustomerID IN (SELECT CustomerID FROM Sales.SalesOrderHeader as g 
        WHERE YEAR(OrderDate) = 2011) 
    AND 
    CustomerID NOT IN (SELECT CustomerID FROM Sales.SalesOrderHeader 
        WHERE YEAR(OrderDate) != 2011)
ORDER BY CustomerID
;
