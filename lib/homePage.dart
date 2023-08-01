import 'package:flutter/material.dart';
import 'package:training_project/components/bottomNavBar.dart';

import 'package:training_project/pages/categoryPage.dart';
import 'package:training_project/pages/profilePage.dart';

import 'package:training_project/pages/shoppingPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex=0;
  void navigteBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  //pages
  final List<Widget> _pages=[
    //shop page
    ShoppingPage(),
    //category page
    CategoryPage(),
    //cart page

    //profile page
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[150],
      bottomNavigationBar: MyNavBar(
        onTabChange: (index)=> navigteBottomBar(index),

      ),
      body: _pages[_selectedIndex],
    );
  }
}
