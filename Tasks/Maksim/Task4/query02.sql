--Query 2
SELECT SOH_out.SalesOrderID,
       SOH_out.CustomerID,
       SOH_out.OrderDate,
       SOH_out.SalesPersonID
FROM Sales.SalesOrderHeader SOH_out
INNER JOIN (SELECT SOH.CustomerID,
                   MAX(SOH.OrderDate) Max_Order_Date
            FROM Sales.SalesOrderHeader SOH
            GROUP BY SOH.CustomerID) AS IN_T
        ON SOH_out.CustomerID = IN_T.CustomerID
           AND
           IN_T.Max_Order_Date = SOH_out.OrderDate
;
