import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:runway_fashion/Core/utils/assets.dart';
import 'package:runway_fashion/Features/home_page/presentation/views/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Likes"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_rounded), label: "bag"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "proifile"),
        ],
      ),
      appBar: AppBar(
        leadingWidth: 0,
        leading: SizedBox.shrink(),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(Assets.imagesBarChart),
            SvgPicture.asset(Assets.imagesRunway, width: 90),
            SvgPicture.asset(Assets.imagesSolarBellLineDuotone),
          ],
        ),
      ),

      body: HomepageBody(),
    );
  }
}
