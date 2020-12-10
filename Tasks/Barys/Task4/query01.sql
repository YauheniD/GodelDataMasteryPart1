--Task 1
SELECT 
    CustomerID,
    MAX(OrderDate) AS MaxOrderDate
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
;
