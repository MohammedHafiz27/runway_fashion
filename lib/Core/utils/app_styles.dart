import 'package:flutter/material.dart';
import 'package:runway_fashion/Core/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).textTheme.bodyLarge?.color,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'AlanSans',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold14(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).textTheme.bodyLarge?.color,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'AlanSans',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold10(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).textTheme.bodyLarge?.color,
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      fontFamily: 'AlanSans',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleMedium14(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).textTheme.bodyLarge?.color,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'AlanSans',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF5A5555),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'AlanSans',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleBold20(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF5A5555),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'AlanSans',
      fontWeight: FontWeight.w700,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  // better for mobile and no context;
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // var width = physicalWidth / devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tabletBreakPoint) {
    return width / 450;
  } else {
    return width / 800;
  }
}
