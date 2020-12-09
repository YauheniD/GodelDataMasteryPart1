--Query 11
DECLARE @TempTable TABLE(
    CustomerID INT,
    SalesOrderID INT,
    OrderDate DATETIME,
    SalesPersonID INT

)

DECLARE @start INT
SET @start = (SELECT MIN(CustomerID) FROM Sales.Customer)

WHILE @start < (SELECT MAX(CustomerID) FROM Sales.Customer)
BEGIN
    IF @start in (SELECT CustomerID FROM Sales.Customer)
        INSERT INTO @TempTable (
        CustomerID,
        SalesOrderID ,
        OrderDate ,
        SalesPersonID
        )(SELECT @start,SalesOrderID,OrderDate, SalesPersonID FROM Sales.MostRecentOrders(@start, 3))
        
    SET @start = @start +1
    
    
END
SELECT * FROM @TempTable
ORDER BY CustomerID
;
