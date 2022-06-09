import 'package:get/get.dart';
import 'package:untitled/controllers/cart_controller.dart';
import 'package:untitled/controllers/category_controller.dart';

import 'controllers/product_controller.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductController());
    Get.lazyPut(() => CartController());
    Get.put(CategoryController());
  }
}
