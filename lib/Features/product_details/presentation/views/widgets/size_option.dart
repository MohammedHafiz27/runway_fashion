
import 'package:flutter/material.dart';

class SizeOption extends StatelessWidget {
  final String size;
  const SizeOption({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(size, style: const TextStyle(fontSize: 14)),
    );
  }
}