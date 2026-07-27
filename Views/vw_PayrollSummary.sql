USE HRManagementDB;
GO

CREATE VIEW vw_PayrollSummary
AS
SELECT
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    d.DepartmentName,
    p.BasicSalary,
    p.Bonus,
    p.Deductions,
    p.NetSalary,
    p.PayMonth
FROM Employees e
INNER JOIN Payroll p
    ON e.EmployeeID = p.EmployeeID
INNER JOIN Departments d
    ON e.DepartmentID = d.DepartmentID;
GO
