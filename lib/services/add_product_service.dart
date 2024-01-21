import 'package:store_app/helper/api_service.dart';

import '../models/product_model.dart';

class AddProduct {
  Future<ProductModel> addProduct({
    required String title,
    required String price,
    required String description,
    required String category,
    required String image,
  }) async {
    Map<String, dynamic> data = await ApiService.post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category,
      },
    );
    return ProductModel.fromJson(data);
  }
}
