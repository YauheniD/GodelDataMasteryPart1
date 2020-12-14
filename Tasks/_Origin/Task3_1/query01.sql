-- # 1.Show the count of employees who is working in 'Sales' department and has MaritalStatus 'M'.
SELECT COUNT(*) as Number_of_people
FROM HumanResources.Employee e
JOIN HumanResources.EmployeeDepartmentHistory h 
  ON e.BusinessEntityID = h.BusinessEntityID
JOIN HumanResources.Department d 
  ON h.DepartmentID = d.DepartmentID
WHERE d.Name = 'Sales'
  AND e.MaritalStatus = 'M'
;
