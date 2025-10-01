import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:runway_fashion/Core/utils/app_styles.dart';
import 'package:runway_fashion/Core/utils/assets.dart';
import 'package:runway_fashion/Features/categories_details_page/data/models/product_model.dart';
import 'package:runway_fashion/Features/product_details/presentation/views/widgets/product_details_body.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leadingWidth: 0,
        leading: SizedBox.shrink(),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () => context.pop(), icon: Icon(Icons.arrow_back)),
            Text("Men", style: AppStyles.styleBold20(context)),
            Theme.of(context).brightness == Brightness.dark
                ? SvgPicture.asset(Assets.imagesbag, colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn))
                : SvgPicture.asset(Assets.imagesbag, colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn)),
          ],
        ),
      ),
      body: ProductDetailsBody(productModel: productModel),
    );
  }
}
