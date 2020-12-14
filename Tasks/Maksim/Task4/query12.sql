--Query 12
DROP FUNCTION IF EXISTS HumanResources.Subordinates;
GO
CREATE FUNCTION HumanResources.Subordinates(@BusinessEntityID  AS INT)
    RETURNS TABLE
        AS
        RETURN

        WITH Pain
        AS (
                SELECT emp.BusinessEntityID ,
                       emp.JobTitle,
                       person.FirstName ManagerFirstName,
                       person.LastName ManagerLasttName,
                       emp2.BusinessEntityID SubID,
                       person2.LastName EmpLastName,
                       person2.FirstName EmpFirstANme,
                       0  AS Level
                FROM HumanResources.Employee emp
                         INNER JOIN HumanResources.Employee emp2
                                    ON emp.BusinessEntityID = emp2.ManagerID
                         INNER JOIN Person.Person person
                                    ON emp.BusinessEntityID = person.BusinessEntityID
                         INNER JOIN Person.Person person2
                                    ON emp2.BusinessEntityID = person2.BusinessEntityID
                WHERE emp.ManagerID IS NULL
                UNION ALL
                SELECT emp.BusinessEntityID,
                       emp.JobTitle,
                       person.FirstName ManagerFirstName,
                       person.LastName ManagerlastName,
                       emp2.BusinessEntityID SubID,
                       person2.LastName EmpLastName,
                       person2.FirstName EmpFirstANme,
                       Level+1
                FROM HumanResources.Employee emp
                         INNER JOIN HumanResources.Employee emp2
                                    ON emp.BusinessEntityID = emp2.ManagerID
                         INNER JOIN Person.Person person
                                    ON emp.BusinessEntityID = person.BusinessEntityID
                         INNER JOIN Person.Person person2
                                    ON emp2.BusinessEntityID = person2.BusinessEntityID
                         INNER JOIN Pain
                                ON Pain.BusinessEntityID = emp.ManagerID
            )

            SELECT *
            FROM Pain
            WHERE Pain.BusinessEntityID = @BusinessEntityID;
GO
SELECT *
FROM HumanResources.Subordinates(3)
;
