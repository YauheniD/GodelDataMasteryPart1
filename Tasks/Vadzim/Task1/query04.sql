--Query 4
SELECT DISTINCT
    SalesOrderID,
    UnitPriceDiscount * OrderQty as TotalDiscount 
FROM Sales.SalesOrderDetail
WHERE UnitPriceDiscount * OrderQty > 5
ORDER BY TotalDiscount DESC
;
