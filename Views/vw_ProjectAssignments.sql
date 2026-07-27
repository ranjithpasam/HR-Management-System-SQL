USE HRManagementDB;
GO

CREATE VIEW vw_ProjectAssignments
AS
SELECT
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    p.ProjectName,
    ep.RoleInProject,
    ep.AssignedDate
FROM EmployeeProjects ep
INNER JOIN Employees e
    ON ep.EmployeeID = e.EmployeeID
INNER JOIN Projects p
    ON ep.ProjectID = p.ProjectID;
GO
