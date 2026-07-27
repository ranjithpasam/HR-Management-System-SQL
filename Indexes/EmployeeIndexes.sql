USE HRManagementDB;
GO

------------------------------------------------------------
-- Clustered Index on EmployeeID
------------------------------------------------------------
CREATE CLUSTERED INDEX IX_Employees_EmployeeID
ON Employees(EmployeeID);
GO

------------------------------------------------------------
-- Non-Clustered Index on Email
------------------------------------------------------------
CREATE NONCLUSTERED INDEX IX_Employees_Email
ON Employees(Email);
GO

------------------------------------------------------------
-- Composite Index on Department and Salary
------------------------------------------------------------
CREATE NONCLUSTERED INDEX IX_Employees_Department_Salary
ON Employees(DepartmentID, Salary);
GO

------------------------------------------------------------
-- Covering Index
------------------------------------------------------------
CREATE NONCLUSTERED INDEX IX_Employees_HireDate
ON Employees(HireDate)
INCLUDE (FirstName, LastName, Salary);
GO

------------------------------------------------------------
-- Unique Index on Phone Number
------------------------------------------------------------
CREATE UNIQUE INDEX IX_Employees_Phone
ON Employees(Phone);
GO
