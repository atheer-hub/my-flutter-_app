
class Product {
  final String image, name, description;
  final double rating;
  final double price;
    int quantity;


  Product({
    required this.image,
    required this.name,
    required this.description,
    this.rating=0.0,
    required this.price,
    this.quantity=1

  });
}
