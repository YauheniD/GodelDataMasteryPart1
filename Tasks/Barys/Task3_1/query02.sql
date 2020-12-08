--Query 2
SELECT
    MIN(BirthDate) AS DOB_of_the_youngest,
    MAX(BirthDate) AS DOB_of_the_oldest	
FROM HumanResources.Employee
;
