
import 'package:flutter/material.dart';
import 'package:runway_fashion/Features/home_page/presentation/views/widgets/categories_section.dart';
import 'package:runway_fashion/Features/home_page/presentation/views/widgets/video_player_widget.dart';

class HomepageBody extends StatelessWidget {
  const HomepageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        VideoPlayerWidget(),
        Positioned(bottom: 0, child: CategoriesSection()),
      ],
    );
  }
}
