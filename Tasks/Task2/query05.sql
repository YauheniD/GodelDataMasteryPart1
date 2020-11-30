--Query 5
SELECT
    hre.BusinessEntityID,
    pp.LastName,
    CASE
        WHEN
            phone.PhoneNumberTypeID IN (SELECT PhoneNumberTypeID FROM Person.PhoneNumberType WHERE Name = 'Work') THEN NULL
        ELSE
            phone.PhoneNumber
    END
FROM HumanResources.Employee AS hre
JOIN Person.Person AS pp 
    ON (hre.BusinessEntityID = pp.BusinessEntityID)
LEFT JOIN Person.PersonPhone AS phone 
    ON (pp.BusinessEntityID = phone.BusinessEntityID)
ORDER BY hre.BusinessEntityID
;
