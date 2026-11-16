using GrocerEasy.Domain.Common;

namespace GrocerEasy.Domain.Groceries;

public sealed class Grocery
{
    // EF core needs a parameterless constructor
    private Grocery()
    {
    }

    private Grocery(string title, float price, float quantity, string unit, string image)
    {
        Title = title;
        Price = price;
        Quantity = quantity;
        Image = image;
    }

    public string Title { get; private set; } = default!;
    public float Price { get; private set; }
    public float Quantity { get; private set; }
    public string Unit { get; private set; } = default!;
    // TODO: determine later how to load in image, currently we just have a dummy image field here to show that there is an image present on the grocery
    public string Image { get; private set; } = default!;

    // build groceries through a factory method
    public static Grocery Create(string title, float price, float quantity, string unit, string image) {
        if (string.IsNullOrWhiteSpace(title)) {
            throw new DomainException("A grocery must have a title");
        }

        if (price <= 0.00f) {
            throw new DomainException("A price of a product cannot be negative");
        }

        return new Grocery(title, price, quantity, unit, image);
    }

    // TODO: business rules/business behaviours, these belong in the entity, not in the services.
    // identify if there are any worth adding under here.
}
