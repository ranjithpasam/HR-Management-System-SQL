USE HRManagementDB;
GO

------------------------------------------------------------
-- 1. ROW_NUMBER()
------------------------------------------------------------
SELECT
    EmployeeID,
    FirstName,
    Salary,
    ROW_NUMBER() OVER (ORDER BY Salary DESC) AS RowNum
FROM Employees;

------------------------------------------------------------
-- 2. RANK()
------------------------------------------------------------
SELECT
    EmployeeID,
    FirstName,
    Salary,
    RANK() OVER (ORDER BY Salary DESC) AS SalaryRank
FROM Employees;

------------------------------------------------------------
-- 3. DENSE_RANK()
------------------------------------------------------------
SELECT
    EmployeeID,
    FirstName,
    Salary,
    DENSE_RANK() OVER (ORDER BY Salary DESC) AS DenseRank
FROM Employees;

------------------------------------------------------------
-- 4. Running Total Salary
------------------------------------------------------------
SELECT
    EmployeeID,
    FirstName,
    Salary,
    SUM(Salary) OVER (ORDER BY EmployeeID) AS RunningTotal
FROM Employees;

------------------------------------------------------------
-- 5. Highest Salary in Each Department
------------------------------------------------------------
SELECT
    DepartmentID,
    MAX(Salary) AS HighestSalary
FROM Employees
GROUP BY DepartmentID;

------------------------------------------------------------
-- 6. CTE Example
------------------------------------------------------------
WITH EmployeeCTE AS
(
    SELECT
        EmployeeID,
        FirstName,
        Salary
    FROM Employees
)
SELECT *
FROM EmployeeCTE
WHERE Salary > 60000;

------------------------------------------------------------
-- 7. Top 3 Highest Paid Employees
------------------------------------------------------------
SELECT TOP 3
    FirstName,
    Salary
FROM Employees
ORDER BY Salary DESC;

------------------------------------------------------------
-- 8. Employees Who Never Took Leave
------------------------------------------------------------
SELECT
    e.FirstName
FROM Employees e
LEFT JOIN LeaveRequests l
    ON e.EmployeeID = l.EmployeeID
WHERE l.EmployeeID IS NULL;

------------------------------------------------------------
-- 9. TRY...CATCH Example
------------------------------------------------------------
BEGIN TRY
    SELECT 100 / 0;
END TRY
BEGIN CATCH
    SELECT
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_MESSAGE() AS ErrorMessage;
END CATCH;

------------------------------------------------------------
-- 10. Transaction Example
------------------------------------------------------------
BEGIN TRANSACTION;

UPDATE Employees
SET Salary = Salary + 1000
WHERE EmployeeID = 1001;

ROLLBACK TRANSACTION;
GO
