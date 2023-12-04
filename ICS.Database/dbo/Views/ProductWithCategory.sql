CREATE VIEW [dbo].[ProductWithCategory]
AS
SELECT
    p.[ProductId],
    p.[ProductCategoryId],
    p.[Name] AS [ProductName],
    pc.[Name] AS [CategoryName],
    p.[Quantity],
    p.[Value],
    p.[Unit],
    p.[Price],
    p.[CreatedAt] AS [ProductCreatedAt],
    p.[UpdatedAt] AS [ProductUpdatedAt],
    pc.[CreatedAt] AS [CategoryCreatedAt],
    pc.[UpdatedAt] AS [CategoryUpdatedAt]
FROM
    [dbo].[Product] p
JOIN
    [dbo].[ProductCategory] pc ON p.[ProductCategoryId] = pc.[ProductCategoryId];