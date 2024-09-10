import 'package:dio/dio.dart';

class ProductService {
  Future<Map<String, List<dynamic>>> fetchAndCategorizeProducts() async {
    try {
      var dio = Dio();
      var response =
          await dio.get('https://dummyjson.com/products/category/groceries');
      List<dynamic> products = response.data['products'];

      // تصنيف المنتجات حسب الفئات الموجودة في tags
      Map<String, List<dynamic>> categorizedProducts = {
        'Fruits': [],
        'Vegetables': [],
        'Meat': [],
        'Dairy': [],
        'Beverages': [],
        'Desserts': [],
        'Grains': [],
        'Pet supplies': [],
        'Others': []
      };

      for (var product in products) {
        List<dynamic> tags = product['tags'];

        if (tags.contains('fruits')) {
          categorizedProducts['Fruits']?.add(product);
        } else if (tags.contains('vegetables') || tags.contains('veg')) {
          categorizedProducts['Vegetables']?.add(product);
        } else if (tags.contains('meat')) {
          categorizedProducts['Meat']?.add(product);
        } else if (tags.contains('dairy')) {
          categorizedProducts['Dairy']?.add(product);
        } else if (tags.contains('beverages')) {
          categorizedProducts['Beverages']?.add(product);
        } else if (tags.contains('desserts')) {
          categorizedProducts['Desserts']?.add(product);
        } else if (tags.contains('grains')) {
          categorizedProducts['Grains']?.add(product);
        } else if (tags.contains('pet supplies')) {
          categorizedProducts['Pet supplies']?.add(product);
        } else {
          categorizedProducts['Others']?.add(product);
        }
      }

      return categorizedProducts;
    } catch (e) {
      print("Error: $e");
      return {};
    }
  }
}
