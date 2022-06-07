import 'package:flutter/material.dart';
import 'package:flutter_application_challenge/ProductsPage.dart';
import 'package:flutter_application_challenge/ProfilePage.dart';

import 'ShoppingCart.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final screens = [
    ProductsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 249, 241),
      // app bar
      appBar: AppBar(
          toolbarHeight: 80,
          elevation: 1,
          shadowColor: Color.fromARGB(255, 193, 160, 160),
          centerTitle: true,
          title: Image.asset(
            "images/logo.png",
            height: 800,
            width: 80,
          ),
          backgroundColor: Color.fromARGB(255, 249, 249, 241),
          shape: ShapeBorder.lerp(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            null,
            0,
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const ShoppingCart())));
                    },
                    icon: Icon(Icons.shopping_bag,
                        size: 27, color: Color.fromARGB(255, 218, 160, 63)))),
          ]),

      //content of the page based on the index

      body: screens[_selectedIndex],

      //bottom navigation bar

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color.fromARGB(255, 218, 160, 63)),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color.fromARGB(255, 218, 160, 63)),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 18, 18, 18),
        onTap: _onItemTapped,
      ),
    );
  }
}
