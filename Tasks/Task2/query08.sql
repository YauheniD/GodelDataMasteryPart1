SELECT Sales.Customer.CustomerID,
       CASE 
              WHEN Person.Person.MiddleName IS NULL
                     AND Person.Person.FirstName IS NOT NULL
                     THEN CONCAT (
                                   Person.Person.FirstName,
                                   ' ',
                                   Person.Person.LastName
                                   )
              ELSE CONCAT (
                            Person.Person.FirstName,
                            ' ',
                            Person.Person.MiddleName,
                            ' ',
                            Person.Person.LastName
                            )
              END AS CustomerFullName,
       Product.Name AS ProductName
FROM Person.Person
LEFT JOIN Person.BusinessEntityAddress
       ON Person.BusinessEntityAddress.BusinessEntityID = Person.Person.BusinessEntityID
LEFT JOIN Person.Address
       ON Person.BusinessEntityAddress.AddressID = Person.Address.AddressID
LEFT JOIN Person.StateProvince
       ON Person.Address.StateProvinceID = Person.StateProvince.StateProvinceID
LEFT JOIN Person.CountryRegion
       ON Person.CountryRegion.CountryRegionCode = Person.StateProvince.CountryRegionCode
LEFT JOIN Sales.Customer
       ON Sales.Customer.PersonID = Person.Person.BusinessEntityID
LEFT JOIN Sales.SalesOrderHeader
       ON Sales.SalesOrderHeader.CustomerID = Sales.Customer.CustomerID
LEFT JOIN Sales.SalesOrderDetail
       ON Sales.SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID
LEFT JOIN Production.Product
       ON Production.Product.ProductID = Sales.SalesOrderDetail.ProductID
WHERE Person.CountryRegion.Name = 'France'
       AND Person.Person.MiddleName = 'R'
ORDER BY CustomerID,
       ProductName
;
