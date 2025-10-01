import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:runway_fashion/Core/utils/app_styles.dart';
import 'package:runway_fashion/Core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 2,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () => context.pop(), icon: Icon(Icons.arrow_back)),
            Text("Men", style: AppStyles.styleBold20(context)),
            Theme.of(context).brightness == Brightness.dark
                ? SvgPicture.asset(Assets.imagesbag, colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn))
                : SvgPicture.asset(Assets.imagesbag, colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn)),
          ],
        ),
        Container(
          width: MediaQuery.sizeOf(context).width,
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(border: Border.symmetric(horizontal: BorderSide(width: 0.5))),
          child: Row(
            spacing: 12,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Sort by", style: AppStyles.styleBold20(context)),
              Theme.of(context).brightness == Brightness.dark
                  ? SvgPicture.asset(Assets.imagesSortBy, colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn))
                  : SvgPicture.asset(Assets.imagesSortBy, colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn)),
              Spacer(),
              Icon(Icons.compare_arrows_rounded),
              Text("Filter", style: AppStyles.styleSemiBold14(context)),
              Icon(Icons.grid_view_rounded),
              Icon(Icons.person_3_outlined),
            ],
          ),
        ),
      ],
    );
  }
}
