--Task 4
DELETE FROM dbo.Orders
OUTPUT 
    DELETED.SalesOrderID,
    DELETED.OrderDate
WHERE 
    YEAR(OrderDate) = 2011
    AND
    MONTH(OrderDate) < 8
;
