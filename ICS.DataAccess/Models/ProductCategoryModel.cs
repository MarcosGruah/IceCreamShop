namespace ICS.DataAccess.Models;

public class ProductCategory
{
    public required Guid ProductCategoryId { get; set; }
    public required string Name { get; set; }
    public required DateTime CreatedAt { get; set; }
    public required DateTime UpdatedAt { get; set; }
}