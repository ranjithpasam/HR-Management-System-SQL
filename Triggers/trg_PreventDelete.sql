USE HRManagementDB;
GO

CREATE TRIGGER trg_PreventDelete
ON Departments
INSTEAD OF DELETE
AS
BEGIN
    RAISERROR('Department records cannot be deleted.',16,1);
END;
GO
