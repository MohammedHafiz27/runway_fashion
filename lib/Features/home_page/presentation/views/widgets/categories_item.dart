import 'package:flutter/material.dart';
import 'package:runway_fashion/Core/utils/app_styles.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key, required this.image, required this.title});
  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        Image.asset(image, height: 75),
        Text(title, style: AppStyles.styleSemiBold14(context)),
      ],
    );
  }
}
