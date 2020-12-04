--Query 5
SELECT
    hre.BusinessEntityID,
    pp.LastName,
    CASE
        WHEN ppnt.Name = 'Cell' THEN phone.PhoneNumber
        ELSE NULL
    END
FROM HumanResources.Employee AS hre
JOIN Person.Person AS pp 
    ON (hre.BusinessEntityID = pp.BusinessEntityID)
JOIN Person.PersonPhone AS phone 
    ON (pp.BusinessEntityID = phone.BusinessEntityID)
JOIN Person.PhoneNumberType AS ppnt 
    ON (ppnt.PhoneNumberTypeID = phone.PhoneNumberTypeID)
ORDER BY hre.BusinessEntityID
;
