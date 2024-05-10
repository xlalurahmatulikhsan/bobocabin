import 'package:flutter/material.dart';
import 'package:my_application/user_auth/presentation/pages/main/main_home.dart';
import 'package:my_application/user_auth/presentation/pages/main/main_stays.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range),
            label: 'Stays',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
        iconSize: 30, // Ukuran font ikon
      ),
      body: <Widget>[
        /// Home page
        const MainHome(),

        /// Stays page
        const AutoScrollHorizontalView(),

        /// Profile page
        const Text('profile')
      ][_selectedIndex],
    );
  }
}
