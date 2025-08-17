import 'package:flutter/material.dart';
import 'package:twitter/views/feature/home/home_screen.dart';
import 'package:twitter/views/feature/post/post_screen.dart';
import 'package:twitter/views/feature/profile/profile_screen.dart';
import 'package:twitter/views/feature/search/search_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int index = 3;

List screens = [HomeScreen(), SearchScreen(), PostScreen(), ProfileScreen()];

List<BottomNavigationBarItem> navbar = [
  BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    activeIcon: Icon(Icons.home),
    label: "home",
  ),
  BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: "serch"),
  BottomNavigationBarItem(icon: Icon(Icons.post_add_rounded), label: "post"),
  BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        elevation: 1,
        type: BottomNavigationBarType.fixed,
        onTap: (value) => setState(() {
          index = value;
        }),
        items: navbar,
      ),
    );
  }
}
