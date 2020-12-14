--Query 9
SELECT CustomerID,
       year,
       TotalQty,
       SUM(TotalQty) OVER (PARTITION BY CustomerID ORDER BY year) runqty
FROM Sales.vCustOrders
ORDER BY CustomerID, year;
;
