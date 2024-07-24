import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  final Function(int) onTabChange;

  const MyBottomNavBar({Key? key, required this.onTabChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(22),
      child: GNav(
          onTabChange: (value) => onTabChange(value),
          color: Color.fromARGB(255, 241, 75, 186),
          mainAxisAlignment: MainAxisAlignment.center,
          activeColor: Color.fromARGB(255, 241, 75, 186),
          tabBackgroundColor: const Color.fromARGB(255, 248, 221, 230),
          tabBorderRadius: 11,
          tabActiveBorder: Border.all(color: Color.fromARGB(255, 240, 66, 124)),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Shop",
            ),
            GButton(
              icon: Icons.shopping_bag_outlined,
              text: "Cart",
            ),
          ]),
    );
  }
}
