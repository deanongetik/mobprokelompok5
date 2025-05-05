class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  final double discountPrice;
  final String creator;
  final double rating;
  final int sales;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.discountPrice,
    required this.creator,
    required this.rating,
    required this.sales,
    required this.imageUrl,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: double.parse(json['price'].toString()),
      discountPrice: double.parse(json['discount_price'].toString()),
      creator: json['creator'],
      rating: double.parse(json['rating'].toString()),
      sales: json['sales'],
      imageUrl: json['image_url'],
    );
  }
}