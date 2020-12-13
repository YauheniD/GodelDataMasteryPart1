--Query  2
SELECT MIN(emp.BirthDate) DOB_of_the_oldest,
       MAX(emp.BirthDate) DOB_of_the_youngest
FROM HumanResources.Employee emp
;
