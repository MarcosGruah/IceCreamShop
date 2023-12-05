namespace ICS.DataAccess.Models;

public class ProductModel
{
    public required Guid ProductId { get; set; }
    public required Guid ProductCategoryId { get; set; }
    public required string Name { get; set; }
    public required int Quantity { get; set; }
    public required decimal Value { get; set; }
    public required string Unit { get; set; }
    public required decimal Price { get; set; }
    public required DateTime CreatedAt { get; set; }
    public required DateTime UpdatedAt { get; set; }
}