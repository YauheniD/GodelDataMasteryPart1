--Query 7
SELECT
	BusinessEntityID,
	PhoneNumber,
	PhoneNumberTypeID,
	CASE
		WHEN PhoneNumberTypeID = 1 THEN 'Mobile'
		WHEN PhoneNumberTypeID = 2 THEN 'Home'
		WHEN PhoneNumberTypeID = 3 THEN 'Other'
	END AS PhoneType
FROM Person.PersonPhone
WHERE 
	YEAR(ModifiedDate) = 2011 
	AND
	PhoneNumber LIKE '%77'
