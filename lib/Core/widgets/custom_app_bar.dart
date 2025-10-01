import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:runway_fashion/Core/cubit/theme_cubit.dart';
import 'package:runway_fashion/Core/utils/assets.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(Assets.imagesBarChart, colorFilter: ColorFilter.mode(color, BlendMode.srcIn)),
        SvgPicture.asset(Assets.imagesRunway, width: 90, colorFilter: ColorFilter.mode(color, BlendMode.srcIn)),
        Row(
          children: [
            IconButton(
              onPressed: () => context.read<ThemeCubit>().toggleTheme(),
              icon: Theme.of(context).brightness == Brightness.dark
                  ? Icon(Icons.light_mode)
                  : Icon(Icons.dark_mode, color: color),
            ),
            SvgPicture.asset(Assets.imagesSolarBellLineDuotone, colorFilter: ColorFilter.mode(color, BlendMode.srcIn)),
          ],
        ),
      ],
    );
  }
}
