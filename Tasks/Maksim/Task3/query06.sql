--Query  6
SELECT customer.CustomerID,
       SOH.OrderDate
FROM Sales.Customer  customer
INNER JOIN Sales.SalesOrderHeader SOH
        ON customer.CustomerID = SOH.CustomerID
WHERE EXISTS
            (SELECT *
             FROM Sales.SalesOrderHeader SOH1
             WHERE SOH1.CustomerID = customer.CustomerID
                   AND
                   YEAR(SOH1.OrderDate) = 2011)
      AND NOT EXISTS
            (SELECT *
             FROM Sales.SalesOrderHeader SOH2
             WHERE SOH2.CustomerID = customer.CustomerID
                   AND
                   YEAR(SOH2.OrderDate) != 2011)
ORDER BY customer.CustomerID
;
