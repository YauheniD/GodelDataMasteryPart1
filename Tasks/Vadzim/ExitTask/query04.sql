--Query 4
SELECT DISTINCT
    hrs.Name AS ShiftName,
    COUNT(*) OVER() AS OverallEmployees,
    COUNT(*) OVER(PARTITION BY hrs.Name) AS EmployeesByShift,
    ROUND(((CAST(COUNT(*) OVER(PARTITION BY hrs.Name) AS FLOAT) / (CAST(COUNT(*) OVER() AS FLOAT)))) * 100 ,2) AS EmployeesByShiftPercentage
FROM HumanResources.Shift AS hrs
JOIN HumanResources.EmployeeDepartmentHistory AS hredh ON (hrs.ShiftID = hredh.ShiftID)
JOIN HumanResources.Employee AS hre ON (hredh.BusinessEntityID = hre.BusinessEntityID)
ORDER BY EmployeesByShiftPercentage DESC
;
