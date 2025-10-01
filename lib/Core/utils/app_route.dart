import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:runway_fashion/Features/categories_details_page/data/models/product_model.dart';
import 'package:runway_fashion/Features/categories_details_page/presentation/views/categories_details_page.dart';
import 'package:runway_fashion/Features/home_page/presentation/views/home_page.dart';
import 'package:runway_fashion/Features/product_details/presentation/views/product_details_page.dart';
import 'package:runway_fashion/Features/splash_screen/presentation/views/splash_screen.dart';

abstract class AppRoute {
  static const String splashScreen = '/';
  static const String homeScreen = '/homeScreen';
  static const String categoriesDetailsScreen = '/categoriesDetailsScreen';
  static const String productDetailsScreen = '/productDetailsScreen';
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: homeScreen,
            builder: (context, state) {
              return HomePage();
            },
          ),
          GoRoute(
            path: categoriesDetailsScreen,
            builder: (context, state) {
              return CategoriesDetailsPage();
            },
          ),
          GoRoute(
            path: productDetailsScreen,
            builder: (context, state) {
              return ProductDetailsPage(productModel: state.extra as ProductModel);
            },
          ),
        ],
      ),
    ],
  );
}
