--Query 8
SELECT 
    sc.CustomerID,
    CASE
        WHEN
            pp.MiddleName IS NULL  THEN pp.FirstName + ' ' + pp.LastName
        ELSE pp.FirstName + ' ' + pp.MiddleName + ' ' + pp.LastName
    END AS FullName,
    pr.Name AS ProductName
FROM  Person.Person AS pp
LEFT JOIN Sales.Customer AS sc 
    ON (pp.BusinessEntityID = sc.PersonID)
LEFT JOIN Sales.SalesOrderHeader AS ssoh 
    ON (ssoh.CustomerID = sc.CustomerID)
LEFT JOIN Sales.SalesOrderDetail AS ssod 
    ON (ssoh.SalesOrderID = ssod.SalesOrderID)
LEFT JOIN Production.Product AS pr 
    ON (ssod.ProductID = pr.ProductID)
JOIN Person.BusinessEntityAddress AS pbea 
    ON (pbea.BusinessEntityID = pp.BusinessEntityID)
JOIN Person.Address AS pa 
    ON (pbea.AddressID = pa.AddressID)
JOIN Person.StateProvince AS psp 
    ON (pa.StateProvinceID = psp.StateProvinceID)
JOIN Person.CountryRegion AS pcr 
    ON (pcr.CountryRegionCode = psp.CountryRegionCode)
WHERE
    pcr.Name = 'France'
    AND
    pp.MiddleName = 'R'
ORDER BY sc.CustomerID, pr.Name
;
