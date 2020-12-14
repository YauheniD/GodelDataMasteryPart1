--Query 3
SELECT
    DATEDIFF( DAY, '', DATEADD(HOUR,AVG(VacationHours),'')) AS AVG_vacation_days,
    DATEDIFF( DAY, '', DATEADD(HOUR,AVG(SickLeaveHours),'')) AS AVG_sick_days
FROM HumanResources.Employee
;
