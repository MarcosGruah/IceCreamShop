CREATE PROCEDURE [dbo].[spProduct_Read]
    @ProductId UNIQUEIDENTIFIER
AS
BEGIN
    SET NOCOUNT ON;
    SELECT [ProductId], [ProductCategoryId], [Name], [Quantity], [Value], [Unit], [Price], [CreatedAt], [UpdatedAt]
    FROM [dbo].[Product]
    WHERE [ProductId] = @ProductId;
END