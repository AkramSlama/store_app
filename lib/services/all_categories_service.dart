import 'package:store_app/helper/api_service.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data = await ApiService.get(
      url: 'https://fakestoreapi.com/products/categories',
    );
    return data;
  }
}
