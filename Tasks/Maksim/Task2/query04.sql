--Query  4
SELECT person.BusinessEntityID,
       person.LastName,
       person.FirstName
FROM Person.Person AS person
LEFT JOIN Person.BusinessEntityAddress as bea
       ON bea.BusinessEntityID = person.BusinessEntityID
WHERE bea.BusinessEntityID IS NULL
      OR 
      bea.AddressTypeID <> 2
ORDER BY person.BusinessEntityID
;
