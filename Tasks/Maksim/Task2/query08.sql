--Query  8
SELECT customer.CustomerID,
       CONCAT(person.FirstName, ' ', person.MiddleName, ' ', person.LastName) AS CustomerFullName,
       product.Name AS ProductName
FROM Person.Person AS person
LEFT JOIN Person.BusinessEntityAddress
       ON Person.BusinessEntityAddress.BusinessEntityID = person.BusinessEntityID
LEFT JOIN Person.Address
       ON Person.BusinessEntityAddress.AddressID = Person.Address.AddressID
LEFT JOIN Person.StateProvince
       ON Person.Address.StateProvinceID = Person.StateProvince.StateProvinceID
LEFT JOIN Person.CountryRegion
       ON Person.CountryRegion.CountryRegionCode = Person.StateProvince.CountryRegionCode
LEFT JOIN Sales.Customer AS customer
       ON customer.PersonID = person.BusinessEntityID
LEFT JOIN Sales.SalesOrderHeader
       ON Sales.SalesOrderHeader.CustomerID = customer.CustomerID
LEFT JOIN Sales.SalesOrderDetail
       ON Sales.SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID
LEFT JOIN Production.Product AS product
       ON product.ProductID = Sales.SalesOrderDetail.ProductID
WHERE Person.CountryRegion.Name = 'France'
    AND person.MiddleName = 'R'

ORDER BY 1,3
;
