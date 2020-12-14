--Query  3
SELECT customer.CustomerID,
       person.LastName,
       person.FirstName
FROM Sales.Customer customer
INNER JOIN Sales.SalesOrderHeader SOH
        ON customer.CustomerID = SOH.CustomerID
INNER JOIN Person.Person person
        ON person.BusinessEntityID = customer.PersonID
WHERE YEAR(SOH.OrderDate) = 2012
      AND
      MONTH(SOH.OrderDate) = 1
INTERSECT
SELECT  customer.CustomerID,
       person.LastName,
       person.FirstName
FROM Sales.Customer customer
INNER JOIN Sales.SalesOrderHeader SOH
        ON customer.CustomerID = SOH.CustomerID
INNER JOIN Person.Person person
        ON person.BusinessEntityID = customer.PersonID
WHERE YEAR(SOH.OrderDate) = 2012
      AND
      MONTH(SOH.OrderDate) = 3
;
