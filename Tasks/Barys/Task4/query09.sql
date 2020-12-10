--Task 9
SELECT 
    CustomerID,
    OrderYear,
    OrderQty,
    SUM(OrderQty) OVER (PARTITION BY CustomerID ORDER BY OrderYear) AS runqty
FROM Sales.vCustOrders;
;
