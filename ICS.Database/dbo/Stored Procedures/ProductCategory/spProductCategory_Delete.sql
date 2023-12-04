CREATE PROCEDURE [dbo].[spProductCategory_Delete]
    @ProductCategoryId UNIQUEIDENTIFIER
AS
BEGIN
    SET NOCOUNT ON;
    DELETE
    FROM [dbo].[ProductCategory]
    WHERE [ProductCategoryId] = @ProductCategoryId;
END