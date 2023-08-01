import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
class MyNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyNavBar({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin:  const EdgeInsets.all(20),
        padding: EdgeInsets.symmetric(horizontal: 20),

        child: GNav(
          onTabChange:(value)=> onTabChange!(value),
          color: Colors.grey[400],
            mainAxisAlignment: MainAxisAlignment.center,
            activeColor: Colors.grey[700],
            tabBackgroundColor: Colors.grey.shade300,
            tabBorderRadius: 24,
            tabActiveBorder: Border.all(color: Colors.white),
            tabs: [
          GButton(icon: Icons.home,
            text: 'Shop',
          ),
          GButton(icon: Icons.account_tree_outlined,
            text: 'Category',
          ),

          GButton(icon: Icons.account_circle_outlined,
            text: 'Profile',
          ),
        ]),
      ),
    );
  }
}
