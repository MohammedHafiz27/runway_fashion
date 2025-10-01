import 'package:flutter/material.dart';
import 'package:runway_fashion/Core/utils/app_styles.dart';
import 'package:runway_fashion/Core/utils/assets.dart';
import 'package:runway_fashion/Features/categories_details_page/data/models/product_model.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 200 / 250,
          child: Container(
            decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(8)),

            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(bottom: 0, right: 0, left: 10, child: Image.asset(Assets.imagesShadow)),
                Image.asset(productModel.image, height: 250),
              ],
            ),
          ),
        ),
        Text(productModel.title, maxLines: 1, overflow: TextOverflow.ellipsis, style: AppStyles.styleMedium14(context)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              productModel.price,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.styleMedium14(context),
            ),
            Icon(Icons.favorite_border),
          ],
        ),
      ],
    );
  }
}
