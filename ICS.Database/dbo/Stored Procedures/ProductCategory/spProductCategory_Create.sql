CREATE PROCEDURE [dbo].[spProductCategory_Create]
    @Name NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO [dbo].[ProductCategory]([Name])
    VALUES (@Name);
END