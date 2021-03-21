package ku.shop;

public class OrderItem {
    private int quantity;
    private Product prod;

    public OrderItem(Product prod, int quantity) {
        if (quantity <= 0)
            throw new IllegalArgumentException("Quantity must be positive");

        if (quantity > prod.getQuantity())
            throw new IllegalArgumentException("Not enough items in stock");

        this.prod = prod;
        this.quantity = quantity;
    }

    public double getSubtotal() {
        return prod.getPrice() * quantity;
    }

}
