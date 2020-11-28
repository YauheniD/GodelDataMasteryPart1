SELECT DISTINCT TOP 5 SalesOrderID,
       UnitPriceDiscount * OrderQty AS TotalDiscount
FROM Sales.SalesOrderDetail
WHERE UnitPriceDiscount * OrderQty > 5
ORDER BY TotalDiscount DESC
;
