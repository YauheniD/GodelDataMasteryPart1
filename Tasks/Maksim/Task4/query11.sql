--Query 11
SELECT customer.CustomerID,
       fun.SalesOrderID,
       fun.OrderDate,
       fun.SalesPersonID
FROM Sales.Customer customer
CROSS APPLY Sales.MostRecentOrders(customer.CustomerID,3) fun
ORDER BY customer.CustomerID
;
