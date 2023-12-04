CREATE PROCEDURE [dbo].[spProduct_Create]
    @ProductCategoryId UNIQUEIDENTIFIER,
    @Name NVARCHAR(50),
    @Quantity INT,
    @Value DECIMAL(19, 4),
    @Unit NVARCHAR(10),
    @Price DECIMAL(19, 4)
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO [dbo].[Product]([ProductCategoryId], [Name], [Quantity], [Value], [Unit], [Price])
    VALUES (@ProductCategoryId, @Name, @Quantity, @Value, @Unit, @Price);
END