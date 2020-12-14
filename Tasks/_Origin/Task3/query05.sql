SELECT DISTINCT
       VendorID,
       OrderDate,
       PurchaseOrderID
FROM Purchasing.PurchaseOrderHeader AS poh
JOIN (
        SELECT DISTINCT
               VendorID AS venID,
               MAX(OrderDate) AS maxDate
        FROM Purchasing.PurchaseOrderHeader AS poh
        GROUP BY VendorID
      ) a 
  ON poh.VendorID = a.venID AND poh.OrderDate = a.maxDate
;
