import 'package:http/http.dart' as http;
import 'package:untitled/category_model.dart';
import 'package:untitled/product_models.dart';
import 'package:untitled/setting/my_string.dart';

//https://fakestoreapi.com/products/categories

class CategoryServices {
  static Future<List<String>> getCategory() async {
    var response = await http.get(Uri.parse('$baseUrl/products/categories'));

    if (response.statusCode == 200) {
      var jsonData = response.body;
      return categoryModelFromJson(jsonData);
    } else {
      return throw Exception("Failed to load product");
    }
  }
}
//https://fakestoreapi.com/products/category/men's%20clothing
//https://fakestoreapi.com/products/category/jewelery
//https://fakestoreapi.com/products/category/electronics

class AllCategorySercvises {
  static Future<List<ProductModels>> getAllCatehory(
      String categoryNames) async {
    var response =
        await http.get(Uri.parse('$baseUrl/products/category/$categoryNames'));

    if (response.statusCode == 200) {
      var jsonData = response.body;
      return productModelsFromJson(jsonData);
    } else {
      return throw Exception("Failed to load product");
    }
  }
}
