CREATE FUNCTION Sales.MostRecentOrders (
       @CustomerID INT,
       @n AS INT
       )
RETURNS TABLE
AS
RETURN (
              SELECT TOP (@n) SalesOrderID,
                     OrderDate,
                     SalesPersonID
              FROM Sales.SalesOrderHeader
              WHERE CustomerID = @CustomerID
			  ORDER BY OrderDate DESC
              )
GO
;
