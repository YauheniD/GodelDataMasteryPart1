SELECT T1.CustomerID,
       T1.OrderMonth,
       T1.qty,
       SUM(T1.qty) OVER (
              PARTITION BY T1.CustomerID ORDER BY T1.OrderMonth
              ) AS runqty
FROM (
       SELECT CustomerID,
              MONTH(OrderDate) AS OrderMonth,
              SUM(OrderQty) AS qty
       FROM Sales.SalesOrderHeader
       INNER JOIN Sales.SalesOrderDetail
              ON Sales.SalesOrderHeader.SalesOrderID = Sales.SalesOrderDetail.SalesOrderID
       GROUP BY CustomerID,
              MONTH(OrderDate)
       ) AS T1
INNER JOIN Sales.Customer
       ON Sales.Customer.CustomerID = T1.CustomerID
INNER JOIN Person.Person
       ON Sales.Customer.PersonID = Person.Person.BusinessEntityID
WHERE LastName = 'Adams'
ORDER BY CustomerID
;
