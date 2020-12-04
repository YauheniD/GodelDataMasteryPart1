--Query 4
SELECT
    pp.BusinessEntityID,
    pp.LastName,
    pp.FirstName
FROM Person.Person AS pp
LEFT JOIN Person.BusinessEntityAddress AS pbea 
    ON (pp.BusinessEntityID = pbea.BusinessEntityID)
LEFT JOIN Person.AddressType AS pat 
    ON (pat.AddressTypeID = pbea.AddressTypeID)
WHERE
    pat.Name != 'Home'
    OR		
    pat.Name IS NULL
ORDER BY pp.BusinessEntityID
;
