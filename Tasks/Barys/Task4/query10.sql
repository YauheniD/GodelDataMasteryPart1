--Task 10
CREATE FUNCTION Sales.MostRecentOrders
(
    @CustID INT, 
    @TopCount INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT TOP (@TopCount)
	    CustomerID, 
        OrderDate, 
        SalesPersonID
     FROM Sales.SalesOrderHeader
     WHERE @CustID = CustomerID
     ORDER BY OrderDate DESC
 )
 ;
