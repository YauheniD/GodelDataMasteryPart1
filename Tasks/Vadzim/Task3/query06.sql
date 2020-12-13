--Query 6
WITH CTE (CustomerID)
AS
(
    SELECT 
        CustomerID 
    FROM Sales.SalesOrderHeader as g 
    WHERE YEAR(OrderDate) = 2011
    EXCEPT
    SELECT 
        CustomerID 
    FROM Sales.SalesOrderHeader 
    WHERE YEAR(OrderDate) != 2011
)
SELECT DISTINCT
    ssoh.CustomerID,
    ssoh.OrderDate
FROM Sales.SalesOrderHeader AS ssoh
JOIN CTE AS c ON (ssoh.CustomerID = c.CustomerID)
;
