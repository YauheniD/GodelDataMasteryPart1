--Query 7
SELECT
    BusinessEntityID,
    PhoneNumber,
    PhoneNumberTypeID,
    CASE
        WHEN PhoneNumberTypeID = 1 THEN 'Mobile'
        WHEN PhoneNumberTypeID = 2 THEN 'Home'
        ELSE 'Other'
    END AS PhoneType
FROM Person.PersonPhone
WHERE 
    YEAR(ModifiedDate) = 2011 
    AND
    PhoneNumber LIKE '%77'
;
