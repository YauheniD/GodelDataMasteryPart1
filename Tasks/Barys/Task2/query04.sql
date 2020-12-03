--Query 4
SELECT 
    P.BusinessEntityID,
    P.LastName,
    P.FirstName
FROM AdventureWorks2019.Person.Person P
LEFT JOIN AdventureWorks2019.Person.BusinessEntityAddress BA 
    ON P.BusinessEntityID = BA.BusinessEntityID
LEFT JOIN AdventureWorks2019.Person.AddressType A 
    ON A.AddressTypeID = BA.AddressTypeID
WHERE
    A.Name != 'Home'
    OR		
    A.Name IS NULL
ORDER BY P.BusinessEntityID
;
