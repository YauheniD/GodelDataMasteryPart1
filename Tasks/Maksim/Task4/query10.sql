--Query 10
DROP FUNCTION IF EXISTS Sales.MostRecentOrders ;
GO
CREATE FUNCTION Sales.MostRecentOrders(@CustID AS INT, @n AS INT)
    RETURNS TABLE
    AS
    RETURN
        SELECT TOP (@n)
               SOH.SalesOrderID,
               SOH.OrderDate,
               SOH.SalesPersonID
        FROM Sales.SalesOrderHeader SOH
        WHERE SOH.CustomerID = @CustID
        ORDER BY SOH.SalesOrderID;
GO
;
