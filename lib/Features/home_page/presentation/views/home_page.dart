import 'package:flutter/material.dart';
import 'package:runway_fashion/Core/utils/app_theme.dart';
import 'package:runway_fashion/Core/widgets/custom_app_bar.dart';
import 'package:runway_fashion/Features/home_page/presentation/views/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppTheme.getColorBasedOnTheme(context),
        unselectedItemColor: Colors.grey,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Likes"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_rounded), label: "bag"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "proifile"),
        ],
      ),
      appBar: AppBar(
        leadingWidth: 0,
        backgroundColor: Colors.transparent,
        leading: SizedBox.shrink(),
        title: Theme.of(context).brightness == Brightness.dark
            ? CustomAppbar(color: Colors.white)
            : CustomAppbar(color: Colors.black),
      ),

      body: HomepageBody(),
    );
  }
}
