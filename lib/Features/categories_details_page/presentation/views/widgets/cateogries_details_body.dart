import 'package:flutter/material.dart';
import 'package:runway_fashion/Core/utils/assets.dart';
import 'package:runway_fashion/Features/categories_details_page/data/models/product_model.dart';
import 'package:runway_fashion/Features/categories_details_page/presentation/views/widgets/product_item.dart';

class CategoriesDetailsBody extends StatelessWidget {
  const CategoriesDetailsBody({super.key});

  static final List<ProductModel> products = [
    ProductModel(image: Assets.imagesGreenCoatAndWhiteTShirt, title: "Green coat and white T-shirt", price: "£30"),
    ProductModel(image: Assets.imagesGrayCoatAndWhiteTShirtpng, title: "Gray coat and white T-shirt", price: "£30"),
    ProductModel(image: Assets.imagesDeepGrayEssential, title: "Deep gray essential", price: "£30"),
    ProductModel(
      image: Assets.imagesClassicTailoredFitMenDressShirt,
      title: "Classic tailored fit men's dress shirt",
      price: "£30",
    ),
    ProductModel(image: Assets.imagesWhiteTShirt, title: "White T-shirt", price: "£30"),
    ProductModel(image: Assets.imagesTopManBlackWithTrous, title: "Topman black with trousers", price: "£30"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 200 / 300,
          maxCrossAxisExtent: 300,
        ),
        itemBuilder: (context, index) => ProductItem(productModel: products[index]),
      ),
    );
  }
}
