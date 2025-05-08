class ProductModel {
  String id;
  bool isNew;
  bool isDiscount;
  double? discountValue;
  bool isFavourite;
  String image;
  double price;
  String name;
  String unity;
  double rating;
  int reviewsNbr;
  int quantity;
  String description;

  ProductModel({
    required this.id,
    required this.isNew,
    required this.isDiscount,
    required this.discountValue,
    required this.isFavourite,
    required this.image,
    required this.price,
    required this.name,
    required this.unity,
    required this.rating,
    required this.reviewsNbr,
    required this.quantity,
    required this.description,
  });

  // Create a factory constructor to create a ProductModel object from a JSON map
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] as String,
      isNew: json['is_new'] as bool,
      isDiscount: json['is_discount'] as bool,
      discountValue: json['discount_value'] as double,
      isFavourite: json['is_favourite'] as bool,
      image: json['image'] as String,
      price: json['price'] as double,
      name: json['name'] as String,
      unity: json['unity'] as String,
      rating: json['rating'] as double,
      reviewsNbr: json['reviews_nbr'] as int,
      quantity: json['quantity'] as int,
      description: json['description'] as String,
    );
  }

  // Convert the ProductModel object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'is_new': isNew,
      'is_discount': isDiscount,
      'discount_value': discountValue,
      'is_favourite': isFavourite,
      'image': image,
      'price': price,
      'name': name,
      'unity': unity,
      'rating': rating,
      'reviews_nbr': reviewsNbr,
      'quantity': quantity,
      'description': description,
    };
  }

  @override
  String toString() {
    return 'ProductModel{id: $id, isNew: $isNew, isDiscount: $isDiscount, discountValue: $discountValue, isFavourite: $isFavourite, image: $image, price: $price, name: $name, unity: $unity, rating: $rating, reviewsNbr: $reviewsNbr, quantity: $quantity, description: $description}';
  }
}
