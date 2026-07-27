USE HRManagementDB;
GO

CREATE VIEW vw_DepartmentSalarySummary
AS
SELECT
    d.DepartmentName,
    COUNT(e.EmployeeID) AS TotalEmployees,
    AVG(e.Salary) AS AverageSalary,
    MIN(e.Salary) AS MinimumSalary,
    MAX(e.Salary) AS MaximumSalary
FROM Departments d
LEFT JOIN Employees e
    ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName;
GO
