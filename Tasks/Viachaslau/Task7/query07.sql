UPDATE tempdb.dbo.Orders
SET TerritoryID = (
              SELECT TerritoryID
              FROM AdventureWorks2019.Sales.Customer AS ADV2019_C
              WHERE ADV2019_C.CustomerID = tempdb.dbo.Orders.CustomerID
                     AND ADV2019_C.TerritoryID != tempdb.dbo.Orders.TerritoryID)
OUTPUT INSERTED.CustomerID,
       DELETED.TerritoryID AS Old,
       INSERTED.TerritoryID AS New
;
