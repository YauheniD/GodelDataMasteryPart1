--Task#8
SELECT 
       [c].[CustomerID],
       [CustomerFullName] = [p].[FirstName] + ' ' + ISNULL([p].[MiddleName] + ' ', '') + [p].[LastName],
       [ProductName] = PR.Name
FROM [Person].[Person] [p]
    INNER JOIN [Person].[BusinessEntityAddress] bea ON bea.[BusinessEntityID] = p.[BusinessEntityID]
    INNER JOIN [Person].[Address] a ON a.AddressID = bea.AddressID
    INNER JOIN Person.StateProvince sp ON sp.StateProvinceID = a.StateProvinceID
    INNER JOIN Person.CountryRegion cr ON cr.CountryRegionCode = sp.CountryRegionCode
    LEFT JOIN [Sales].[Customer] c ON [c].[PersonID] = [p].[BusinessEntityID]
    LEFT JOIN Sales.SalesOrderHeader soh ON soh.CustomerID = c.CustomerID
    LEFT JOIN Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
    LEFT JOIN Production.Product pr ON pr.ProductID = sod.ProductID
WHERE cr.Name = 'France'
  AND [p].[MiddleName] = 'R'
ORDER BY [c].[CustomerID], [ProductName]
;
