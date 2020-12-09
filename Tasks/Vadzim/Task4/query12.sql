--Query 12
IF COLUMNPROPERTY(OBJECT_ID('HumanResources.Employee'),'ManagerID','AllowsNull') IS NOT NULL
    ALTER TABLE HumanResources.Employee DROP COLUMN ManagerID;
GO
ALTER TABLE HumanResources.Employee ADD ManagerID INT;
GO
UPDATE E
    SET ManagerID = M.BusinessEntityID
FROM HumanResources.Employee E
JOIN HumanResources.Employee M
    ON M.OrganizationNode = E.OrganizationNode.GetAncestor(1);
GO



CREATE FUNCTION HumanResources.GetSubordinates(@BusinessEntityID INT)
RETURNS TABLE
AS
RETURN
(
    WITH DirectReports ( EmployeeID, Title, FirstName, LastName, ManagerID, ManagerFirstName, ManagerLastName,   Level)
    AS
    (
        SELECT  
            e.BusinessEntityID, 
            e.JobTitle,
            pp.FirstName, 
            pp.LastName,
            e.ManagerID,
            (SELECT FirstName FROM Person.Person WHERE BusinessEntityID = e.ManagerID) AS ManagerFirstName,
            (SELECT LastName FROM Person.Person WHERE BusinessEntityID = e.ManagerID) AS ManagerFirstName,
            0 AS Level
        FROM HumanResources.Employee AS e
        INNER JOIN Person.Person AS pp
            ON e.BusinessEntityID = pp.BusinessEntityID 
        WHERE ManagerID IS NULL
        UNION ALL
        SELECT 
            e.BusinessEntityID, 
            e.JobTitle,
            pp.FirstName, 
            pp.LastName,
            e.ManagerID,
            (SELECT FirstName FROM Person.Person WHERE BusinessEntityID = e.ManagerID) AS ManagerFirstName,
            (SELECT LastName FROM Person.Person WHERE BusinessEntityID = e.ManagerID) AS ManagerFirstName,
            Level + 1
        FROM HumanResources.Employee AS e
        INNER JOIN Person.Person AS pp
            ON e.BusinessEntityID = pp.BusinessEntityID 
        INNER JOIN DirectReports AS d
            ON e.ManagerID = d.EmployeeID
    )

    SELECT 
        EmployeeID, 
        Title, 
        FirstName, 
        LastName, 
        ManagerID, 
        ManagerFirstName, 
        ManagerLastName,   
        Level
    FROM DirectReports
    WHERE
        EmployeeID = @BusinessEntityID
        OR
        ManagerID = @BusinessEntityID
        OR
        @BusinessEntityID IS NULL
)

SELECT * FROM HumanResources.GetSubordinates(NULL)
;
