SELECT DISTINCT SP.NAME 
FROM Purchasing.Vendor AS pv
JOIN Person.BusinessEntity AS pbe 
  ON pv.BusinessEntityID = pbe.BusinessEntityID 
JOIN Person.BusinessEntityAddress AS pba 
  ON PBA.BusinessEntityID = pbe.BusinessEntityID
JOIN Person.Address AS pa 
  ON pba.AddressID = pa.AddressID
JOIN Person.StateProvince AS sp 
  ON pa.StateProvinceID = sp.StateProvinceID
WHERE NOT EXISTS (
    SELECT DISTINCT psp.NAME
    FROM Person.StateProvince AS psp
         JOIN Person.Address AS pa ON psp.StateProvinceID = pa.StateprovinceID
         JOIN Sales.SalesOrderHeader AS soh ON pa.AddressID = soh.BillToAddressID
    WHERE sp.Name = psp.NAME
)
;
