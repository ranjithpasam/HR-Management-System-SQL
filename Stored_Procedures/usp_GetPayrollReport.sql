USE HRManagementDB;
GO

CREATE PROCEDURE usp_GetPayrollReport
AS
BEGIN
    SET NOCOUNT ON;

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
        ON e.DepartmentID = d.DepartmentID
    ORDER BY p.PayMonth DESC, e.EmployeeID;
END;
GO
