import 'dart:developer';

import 'package:flutter/material.dart';

import '../grid.dart';
import '../product.dart';
import '../task_6.dart';
import 'home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 2;
  List screen = [Center(child: Text("Cart")), HomeScreen1(), Task6(),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: index == 0
          ? Colors.red
          : index == 1
          ? Colors.green
          : Colors.blue,
      // appBar: AppBar(backgroundColor: Colors.blue, centerTitle: true, title: Text("Home Screen")),
      body: screen[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        currentIndex: index,
        onTap: (v) {
          log("=v : $v==");
          index = v;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_checkout), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
