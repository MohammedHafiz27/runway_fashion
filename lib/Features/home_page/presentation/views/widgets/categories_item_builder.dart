import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:runway_fashion/Core/utils/app_route.dart';
import 'package:runway_fashion/Core/utils/assets.dart';
import 'package:runway_fashion/Features/home_page/data/models/categories_model.dart';
import 'package:runway_fashion/Features/home_page/presentation/views/widgets/categories_item.dart';

class CategoriesItemBuilder extends StatelessWidget {
  const CategoriesItemBuilder({super.key});
  static final List<CategoriesModel> categories = [
    CategoriesModel(image: Assets.imagesWoman, title: "Women"),
    CategoriesModel(image: Assets.imagesMen, title: "Men"),
    CategoriesModel(image: Assets.imagesKids, title: "Kids"),
    CategoriesModel(image: Assets.imagesDeals, title: "Deals"),
    CategoriesModel(image: Assets.imagesHome, title: "Home"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: GestureDetector(
            onTap: () => context.push(AppRoute.categoriesDetailsScreen),
            child: CategoriesItem(image: categories[index].image, title: categories[index].title),
          ),
        );
      },
    );
  }
}
