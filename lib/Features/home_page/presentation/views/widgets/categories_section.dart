import 'package:flutter/material.dart';
import 'package:runway_fashion/Core/utils/app_styles.dart';
import 'package:runway_fashion/Features/home_page/presentation/views/widgets/categories_item_builder.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark ? Colors.black45 : Colors.white54,
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            SizedBox(height: 12),
            Text("Categories", style: AppStyles.styleSemiBold14(context)),
            SizedBox(height: 110, child: CategoriesItemBuilder()),
          ],
        ),
      ),
    );
  }
}
