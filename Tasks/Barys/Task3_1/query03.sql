--Query 3
SELECT
    AVG(VacationHours)/24 AS AVG_vacation_days,
    AVG(SickLeaveHours)/24 AS AVG_vacation_days
FROM HumanResources.Employee
;
