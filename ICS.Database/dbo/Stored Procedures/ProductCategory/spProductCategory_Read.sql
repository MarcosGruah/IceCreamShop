CREATE PROCEDURE [dbo].[spProductCategory_Read]
    @ProductCategoryId UNIQUEIDENTIFIER
AS
BEGIN
    SET NOCOUNT ON;
    SELECT [ProductCategoryId], [Name], [CreatedAt], [UpdatedAt]
    FROM [dbo].[ProductCategory]
    WHERE [ProductCategoryId] = @ProductCategoryId;
END