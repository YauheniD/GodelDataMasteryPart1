--Query  4
SELECT DISTINCT
       vendors.StateProvinceName
FROM Purchasing.vVendorWithAddresses vendors
WHERE vendors.StateProvinceName NOT IN
      (SELECT customer.StateProvinceName
       FROM Sales.vIndividualCustomer customer)
;
