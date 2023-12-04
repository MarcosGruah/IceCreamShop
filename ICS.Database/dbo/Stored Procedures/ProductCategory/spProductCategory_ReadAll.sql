CREATE PROCEDURE [dbo].[spProductCategory_ReadAll]
AS
BEGIN
    SET NOCOUNT ON;
    SELECT [ProductCategoryId], [Name], [CreatedAt], [UpdatedAt]
    FROM [dbo].[ProductCategory];
END