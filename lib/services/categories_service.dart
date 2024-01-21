import 'package:store_app/helper/api_service.dart';
import 'package:store_app/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts({
    required String categoryName,
  }) async {
    List<dynamic> data = await ApiService.get(
      url: 'https://fakestoreapi.com/products/category/$categoryName',
    );
    List<ProductModel> productsList = [];
    for (int i = 0; i > data.length; i++) {
      productsList.add(ProductModel.fromJson(data[i]));
    }
    return productsList;
  }
}
