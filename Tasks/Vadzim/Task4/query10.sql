--Query 10
CREATE FUNCTION Sales.MostRecentOrders(@CustomerID INT, @n INT)
RETURNS TABLE
AS
RETURN
(
    SELECT TOP(@n)
        SalesOrderID,
        OrderDate,
        SalesPersonID
    FROM Sales.SalesOrderHeader
    WHERE CustomerID = @CustomerID
    ORDER BY OrderDate DESC
)

SELECT * FROM Sales.MostRecentOrders(11001, 3)
;
