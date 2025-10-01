import 'package:flutter/material.dart';
import 'package:runway_fashion/Features/product_details/presentation/views/widgets/color_option.dart';

class RowColorsOption extends StatelessWidget {
  const RowColorsOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ColorOption(color: Colors.brown),
        ColorOption(color: Colors.blue),
        ColorOption(color: Colors.red),
      ],
    );
  }
}
