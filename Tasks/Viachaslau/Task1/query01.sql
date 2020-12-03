SELECT SalesOrderID,
       OrderDate,
       CustomerID,
       SalesPersonID
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '05/01/2011'
              AND '05/31/2011'
;
