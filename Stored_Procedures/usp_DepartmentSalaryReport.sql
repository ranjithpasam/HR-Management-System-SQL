USE HRManagementDB;
GO

CREATE PROCEDURE usp_DepartmentSalaryReport
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        d.DepartmentName,
        COUNT(e.EmployeeID) AS TotalEmployees,
        AVG(e.Salary) AS AverageSalary,
        MIN(e.Salary) AS MinimumSalary,
        MAX(e.Salary) AS MaximumSalary
    FROM Departments d
    LEFT JOIN Employees e
        ON d.DepartmentID = e.DepartmentID
    GROUP BY d.DepartmentName
    ORDER BY d.DepartmentName;
END;
GO
