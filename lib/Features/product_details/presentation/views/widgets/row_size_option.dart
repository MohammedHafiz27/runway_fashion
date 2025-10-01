import 'package:flutter/material.dart';
import 'package:runway_fashion/Features/product_details/presentation/views/widgets/size_option.dart';

class RowSizeOption extends StatelessWidget {
  const RowSizeOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizeOption(size: "S"),
        SizeOption(size: "M"),
        SizeOption(size: "L"),
        SizeOption(size: "XL"),
      ],
    );
  }
}

