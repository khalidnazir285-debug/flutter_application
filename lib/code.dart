import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'profile_screen.dart';
import 'search_screen.dart';

class BottumNavigation extends StatelessWidget {
  BottumNavigation({super.key});

  final ValueNotifier<int> selectindex = ValueNotifier<int>(0);

  final List<Widget> screen = [
    HomeScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectindex,
      builder: (context, index, child) {
        return Scaffold(
          body: screen[index],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              selectindex.value = value;
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.orangeAccent,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        );



      },
    );
  }
}