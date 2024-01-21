class UpdateProductResponse {
  int? id;
  String? title;
  dynamic price;
  String? description;
  String? image;
  String? category;

  UpdateProductResponse({
    this.id,
    this.title,
    this.price,
    this.description,
    this.image,
    this.category,
  });

  factory UpdateProductResponse.fromJson(Map<String, dynamic> json) {
    return UpdateProductResponse(
      id: json['id'] as int?,
      title: json['title'] as String?,
      price: (json['price'] as dynamic),
      description: json['description'] as String?,
      image: json['image'] as String?,
      category: json['category'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category,
      };
}
