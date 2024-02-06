class Product {
  final String name;
  final String image;

  Product({required this.name, required this.image});

  factory Product.fromJson(dynamic data) {
    return Product(
      name: data['name'],
      image: data['image'],
    );
  }
}
