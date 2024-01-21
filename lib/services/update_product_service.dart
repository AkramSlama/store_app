import 'package:store_app/helper/api_service.dart';
import 'package:store_app/models/update_product_request/update_product_request.dart';
import 'package:store_app/models/update_product_response.dart';

class UpdateProductService {
  Future<UpdateProductResponse> updateProduct({
    required UpdateProductRequest request,
    required String id,
  }) async {
    Map<String, dynamic> data = await ApiService.put(
      url: 'https://fakestoreapi.com/products/$id',
      body: request.toJson(),
    );
    return UpdateProductResponse.fromJson(data);
  }
}
