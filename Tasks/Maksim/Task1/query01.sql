
--TASK 1
SELECT SalesOrderID,
       OrderDate,
       CustomerID,
       SalesPersonID
FROM Sales.SalesOrderHeader
WHERE 
    MONTH(OrderDate) = 5
    AND 
    YEAR(OrderDate) = 2011;
;
