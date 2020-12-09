/*ALTER FUNCTION HumanResources.GetSubordinates (
       @BusinessEntityID  INT NULL
       )
RETURNS TABLE
AS
RETURN
SELECT E.BusinessEntityID,P.FirstName,P.LastName, E.ManagerID, OrganizationLevel FROM HumanResources.Employee AS E
INNER JOIN Person.Person AS P
ON P.BusinessEntityID = E.BusinessEntityID WHERE E.BusinessEntityID = IIF(@BusinessEntityID IS NULL,E.BusinessEntityID,@BusinessEntityID)
GO*/
/*SELECT * FROM HumanResources.GetSubordinates(5)*/
