DELETE
FROM tempdb.dbo.Orders
WHERE tempdb.dbo.Orders.CustomerID IN (
              SELECT ADV2019_C.CustomerID
              FROM tempdb.dbo.Customers AS ADV2019_C
              WHERE ADV2019_C.CountryRegionCode = 'FR')
;
