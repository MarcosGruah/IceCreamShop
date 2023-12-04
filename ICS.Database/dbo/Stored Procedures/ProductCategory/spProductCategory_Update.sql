CREATE PROCEDURE [dbo].[spProductCategory_Update]
    @ProductCategoryId UNIQUEIDENTIFIER,
    @Name NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [dbo].[ProductCategory]
    SET 
        [Name] = @Name,
        [UpdatedAt] = GETUTCDATE()
    WHERE [ProductCategoryId] = @ProductCategoryId
END