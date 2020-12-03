--Query 7
SELECT BusinessEntityID,
       PhoneNumber,
	   PhoneNumberTypeID,
       CASE PhoneNumberTypeID
            WHEN 1 THEN 'Mobile'
            WHEN 2 THEN 'Home'
            WHEN 3 THEN 'Other'
            ELSE 'None'
        END as PhoneType
FROM Person.PersonPhone
WHERE 
    YEAR(ModifiedDate) = 2011
    AND
    RIGHT(PhoneNumber,2) = '77'
ORDER BY BusinessEntityID
;
