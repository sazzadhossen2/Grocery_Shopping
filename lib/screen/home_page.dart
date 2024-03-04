import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pizza/screen/headers.dart';
import 'package:pizza/utils/utils.dart';

import 'item_count_display.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        selectedItemColor: primaryColors,
        unselectedItemColor: Colors.green[200],
        items:
      [
        BottomNavigationBarItem(icon: Icon(Iconsax.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Iconsax.message),label: 'Chat'),
        BottomNavigationBarItem(icon: Icon(Iconsax.shopping_cart),label: 'cart'),
        BottomNavigationBarItem(icon: Icon(Iconsax.notification),label: 'Notification'),
        BottomNavigationBarItem(icon: Icon(Iconsax.lovely),label: 'WishList')
      ],),
      body: ListView(
        children: [
          SizedBox(height: 15,),
          HeaderParts(),
          ItemCountDisplay()
        ],
      ),
    );
  }
}
