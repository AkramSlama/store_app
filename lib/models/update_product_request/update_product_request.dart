import 'rating.dart';

class UpdateProductRequest {
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  RatingModel? rating;

  UpdateProductRequest({
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory UpdateProductRequest.fromJson(Map<String, dynamic> json) {
    return UpdateProductRequest(
      title: json['title'] as String?,
      price: (json['price'] as double?),
      description: json['description'] as String?,
      category: json['category'] as String?,
      image: json['image'] as String?,
      rating: json['rating'] == null
          ? null
          : RatingModel.fromJson(json['rating'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'price': price,
        'description': description,
        'category': category,
        'image': image,
        'rating': rating?.toJson(),
      };
}
