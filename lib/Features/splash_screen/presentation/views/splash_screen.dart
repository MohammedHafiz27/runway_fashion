import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:runway_fashion/Core/utils/app_route.dart';
import 'package:runway_fashion/Core/utils/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 1500));

    _fadeAnimation = CurvedAnimation(parent: _animationController, curve: Curves.easeInOut);

    _animationController.forward();
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed && mounted) {
        context.pushReplacement(AppRoute.homeScreen);
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            spacing: 4,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.imagesRunway),
              AnimatedBuilder(
                animation: _fadeAnimation,
                builder: (context, child) {
                  return ShaderMask(
                    shaderCallback: (bounds) {
                      return LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.white.withAlpha(255), Colors.white.withAlpha(0)],
                        stops: [_fadeAnimation.value, _fadeAnimation.value + 0.05],
                      ).createShader(bounds);
                    },
                    blendMode: BlendMode.dstIn,
                    child: child,
                  );
                },
                child: Theme.of(context).brightness == Brightness.dark
                    ? SvgPicture.asset(
                        Assets.imagesUnderLine,
                        colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      )
                    : SvgPicture.asset(
                        Assets.imagesUnderLine,
                        colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
