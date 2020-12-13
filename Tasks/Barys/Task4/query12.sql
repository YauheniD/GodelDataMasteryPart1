--Task 12
CREATE FUNCTION HumanResources.GetSubordinates(@BusinessEntityID INT)
RETURNS TABLE
AS
RETURN
(
    WITH Subordinates 
	( 
	    BusinessEntityID, 
	    Title, 
	    FirstName, 
	    LastName, 
	    ManagerID, 
	    ManagerFirstName, 
	    ManagerLastName,  
	    OrganizationLevel
    )
    AS
    (
        SELECT  
            E.BusinessEntityID, 
            E.JobTitle,
            P1.FirstName, 
            P1.LastName,
            E.ManagerID,
			P2.FirstName,
			P2.LastName,
            E.OrganizationLevel
        FROM HumanResources.Employee AS E
        JOIN Person.Person AS P1
            ON E.BusinessEntityID = P1.BusinessEntityID
		LEFT JOIN HumanResources.Employee AS E2
			ON E.ManagerID = E2.BusinessEntityID
		LEFT JOIN Person.Person AS P2
            ON E2.BusinessEntityID = P2.BusinessEntityID
        WHERE E.OrganizationLevel IS NULL
        UNION ALL
        SELECT 
            E.BusinessEntityID, 
            E.JobTitle,
            P1.FirstName, 
            P1.LastName,
            E.ManagerID,
			P2.FirstName,
			P2.LastName,
            E.OrganizationLevel
       FROM HumanResources.Employee AS E
        JOIN Person.Person AS P1
            ON E.BusinessEntityID = P1.BusinessEntityID
		LEFT JOIN HumanResources.Employee AS E2
			ON E.ManagerID = E2.BusinessEntityID
		LEFT JOIN Person.Person AS P2
            ON E2.BusinessEntityID = P2.BusinessEntityID
    )
    SELECT 
        BusinessEntityID, 
        Title, 
        FirstName, 
        LastName, 
        ManagerID, 
        ManagerFirstName, 
        ManagerLastName,   
        OrganizationLevel
    FROM Subordinates
    WHERE
        @BusinessEntityID IS NULL
        OR
        ManagerID = @BusinessEntityID
        OR
        BusinessEntityID = @BusinessEntityID
)
;
