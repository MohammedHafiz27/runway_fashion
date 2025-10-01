import 'package:flutter/material.dart';
import 'package:runway_fashion/Features/categories_details_page/presentation/views/widgets/cateogries_details_body.dart';
import 'package:runway_fashion/Features/categories_details_page/presentation/views/widgets/custom_row_for_app_bar.dart';

class CategoriesDetailsPage extends StatelessWidget {
  const CategoriesDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 56 * 2,
        leadingWidth: 0,
        leading: SizedBox.shrink(),
        title: CustomAppBar(),
      ),
      body: CategoriesDetailsBody(),
    );
  }
}
