import 'package:flutter/material.dart';
import 'package:runway_fashion/Features/categories_details_page/data/models/product_model.dart';
import 'package:runway_fashion/Features/product_details/presentation/views/widgets/my_custom_draggale_scrollable_sheet_body.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 150,
          child: Image.asset(
            productModel.image,
            height: MediaQuery.sizeOf(context).height * 0.75,
            fit: BoxFit.fitHeight,
          ),
        ),
        DraggableScrollableSheet(
          initialChildSize: 0.2,
          minChildSize: 0.2,
          maxChildSize: 0.6,
          builder: (context, scrollController) {
            return MyDraggableScrollableSheetBody(scrollController: scrollController, productModel: productModel);
          },
        ),
      ],
    );
  }
}
