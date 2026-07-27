USE HRManagementDB;
GO

CREATE VIEW vw_LeaveSummary
AS
SELECT
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    l.LeaveType,
    l.StartDate,
    l.EndDate,
    l.Status
FROM Employees e
INNER JOIN LeaveRequests l
    ON e.EmployeeID = l.EmployeeID;
GO
