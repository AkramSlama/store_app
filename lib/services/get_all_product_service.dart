import 'package:store_app/helper/api_service.dart';
import 'package:store_app/models/product_model.dart';

class GetAllProduct {
  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> data = await ApiService.get(
      url: 'https://fakestoreapi.com/products',
    );
    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModel.fromJson(data[i]));
    }
    return productsList;
  }
}
