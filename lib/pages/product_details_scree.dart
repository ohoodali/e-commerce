import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/productDetails/add_cart.dart';
import 'package:untitled/productDetails/clothes_info.dart';
import 'package:untitled/productDetails/image_sliders.dart';
import 'package:untitled/productDetails/size_list.dart';
import 'package:untitled/product_models.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModels productModels;
  const ProductDetailsScreen({required this.productModels, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageSliders(
                imageUrl: productModels.image,
              ),
              ClothesInfo(
                title: productModels.title,
                productId: productModels.id,
                rate: productModels.rating.rate,
                description: productModels.description,
              ),
              const SizeList(),
              AddCart(
                price: productModels.price,
                productModels: productModels,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
