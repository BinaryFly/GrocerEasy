namespace GrocerEasy.Domain.Common;

public abstract class Entity
{
    public Guid Id { get; protected set; } = Guid.CreateVersion7();
}

// Thrown when a domain rule is broken (empty title, impossible price, and so on)
public sealed class DomainException(string message) : Exception(message);
