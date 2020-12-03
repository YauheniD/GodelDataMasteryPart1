--Query 6
SELECT 
    CustomerID,
    OrderDate, 
    SalesOrderID, 
    CreditCardID,
    ROW_NUMBER() OVER (PARTITION BY CustomerID ORDER BY OrderDate, SalesOrderID) AS RowNumber  
FROM Sales.SalesOrderHeader 
WHERE CreditCardID IS NOT NULL
;
