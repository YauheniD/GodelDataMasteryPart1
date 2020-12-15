--Query 7
UPDATE tempdb.dbo.OrderHeader
SET TerritoryID = (SELECT TerritoryID 
    FROM AdventureWorks2019.Sales.Customer
    WHERE 
        tempdb.dbo.OrderHeader.CustomerID = AdventureWorks2019.Sales.Customer.CustomerID
        AND
        tempdb.dbo.OrderHeader.TerritoryID != AdventureWorks2019.Sales.Customer.TerritoryID
    )
OUTPUT INSERTED.CustomerID,
    DELETED.TerritoryID AS Old,
    INSERTED.TerritoryID AS New
;
