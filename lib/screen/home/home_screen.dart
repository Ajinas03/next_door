import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final items = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Feed"),
    const BottomNavigationBarItem(
      icon: Icon(Icons.explore),
      label: "Explore",
    ),
    const BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart), label: "Cart"),
    const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (i) {
            print("selected item = $i");
          },
          currentIndex: 0,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          items: items),
      body: Container(
        child: ListView(
          children: const [],
        ),
      ),
    );
  }
}
