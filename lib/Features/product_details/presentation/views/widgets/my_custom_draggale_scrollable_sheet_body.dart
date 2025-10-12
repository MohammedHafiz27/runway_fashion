import 'dart:math';

import 'package:flutter/material.dart';
import 'package:liquid_glass_renderer/liquid_glass_renderer.dart';
import 'package:runway_fashion/Core/utils/app_styles.dart';
import 'package:runway_fashion/Core/utils/app_theme.dart';
import 'package:runway_fashion/Core/widgets/custom_elevated_button.dart';
import 'package:runway_fashion/Features/categories_details_page/data/models/product_model.dart';
import 'package:runway_fashion/Features/product_details/presentation/views/widgets/handle_bar.dart';
import 'package:runway_fashion/Features/product_details/presentation/views/widgets/row_colors_option.dart';
import 'package:runway_fashion/Features/product_details/presentation/views/widgets/row_size_option.dart';

class MyDraggableScrollableSheetBody extends StatelessWidget {
  const MyDraggableScrollableSheetBody({super.key, required this.productModel, this.scrollController});
  final ScrollController? scrollController;
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return LiquidGlass(
      settings: LiquidGlassSettings(
        refractiveIndex: 40,
        blur: 5,
        saturation: 0.7,
        lightIntensity: 3,
        lightAngle: 0.4 * pi,
      ),
      shape: LiquidRoundedRectangle(borderRadius: Radius.circular(30)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, -3))],
        ),
        child: SingleChildScrollView(
          controller: scrollController,
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HandleBar(),
              Text(
                productModel.title,
                style: AppStyles.styleBold20(context).copyWith(color: AppTheme.getColorBasedOnTheme(context)),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    productModel.price,
                    style: AppStyles.styleBold20(context).copyWith(color: AppTheme.getColorBasedOnTheme(context)),
                  ),
                  const Spacer(),
                  const Icon(Icons.favorite_border, color: Colors.redAccent),
                  const SizedBox(width: 6),
                  Text(
                    "450",
                    style: AppStyles.styleSemiBold16(context).copyWith(color: AppTheme.getColorBasedOnTheme(context)),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              /// Select Colour
              Text(
                "Select Colour",
                style: AppStyles.styleBold16(context).copyWith(color: AppTheme.getColorBasedOnTheme(context)),
              ),
              const SizedBox(height: 10),
              RowColorsOption(),
              const SizedBox(height: 20),

              /// Select Size
              Text(
                "Select Size",
                style: AppStyles.styleBold16(context).copyWith(color: AppTheme.getColorBasedOnTheme(context)),
              ),
              const SizedBox(height: 10),
              RowSizeOption(),
              const SizedBox(height: 20),

              /// Free Delivery
              Row(
                children: [
                  const Icon(Icons.local_shipping_outlined, color: Colors.green),
                  const SizedBox(width: 8),
                  Text(
                    "Free delivery by Tomorrow",
                    style: AppStyles.styleSemiBold16(context).copyWith(color: Colors.green),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              /// Buttons
              Row(
                children: [
                  Expanded(
                    child: CustomElevatedButton(color: Colors.orangeAccent, title: "Add to Cart"),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: CustomElevatedButton(color: Colors.black, title: "Buy Now"),
                  ),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
