Drop Procedure sp_UpdateStudioName
go
CREATE PROCEDURE sp_UpdateStudioName
@Id int,
@NewName varchar(50)
AS BEGIN
Update Studio
Set StudioName = @NewName
Where StudioId = @Id
END