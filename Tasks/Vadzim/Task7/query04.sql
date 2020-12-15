--Query 4
DELETE FROM  tempdb.dbo.OrderHeader
OUTPUT 
    DELETED.SalesOrderID,
    DELETED.OrderDate
WHERE 
    YEAR(OrderDate) = 2011
    AND
    MONTH(OrderDate) < 8
;
