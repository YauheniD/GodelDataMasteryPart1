WITH CountSales AS 
(
    SELECT 
        CustomerID AS CustId, 
        COUNT(SalesOrderID) AS sales
    FROM Sales.SalesOrderHeader
    GROUP BY CustomerID
),   
cust(custid, orders) AS
(
    SELECT 
        CustomerID, 
        COUNT(SalesOrderID) 
    FROM Sales.SalesOrderHeader
    GROUP BY CustomerID
    HAVING COUNT(SalesOrderID)=(SELECT MAX(sales) FROM CountSales)
)
SELECT 
    CustomerID, 
    SalesOrderID,
    OrderDate
FROM Sales.SalesOrderHeader
WHERE CustomerID IN (SELECT cust.custid FROM cust)
ORDER BY CustomerID
;

