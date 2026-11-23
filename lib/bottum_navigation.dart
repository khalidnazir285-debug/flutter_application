import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'profile_screen.dart';
import 'search_screen.dart';

class BottumNavigation extends StatelessWidget {
  BottumNavigation({super.key});

  final ValueNotifier<int> _Slectindex = ValueNotifier<int>(0);

  List<Widget> screen = [
    HomeScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _Slectindex,
      builder: (context, index, child) {
        return Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) {
              final width = constraints.maxWidth;

              if (width >= 600) {
                return Row(
                  children: [
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFF0D0A16),
                        border: Border.all(
                          color: Color(0xFF161225),
                          width: 1,
                        ),
                      ),
                      child: NavigationRail(
                        backgroundColor: Color(0xFF0D0A16),

                        selectedIndex: index,

                        onDestinationSelected: (index) {
                          _Slectindex.value = index;
                        },

                        selectedIconTheme: IconThemeData(
                          color: Colors.lightGreen,
                          size: 28,
                        ),

                        unselectedIconTheme: IconThemeData(
                          color: Colors.grey.shade600,
                          size: 26,
                        ),

                        selectedLabelTextStyle: TextStyle(
                          color: Colors.lightGreen,
                        ),

                        unselectedLabelTextStyle: TextStyle(
                          color: Colors.grey.shade600,
                        ),

                        labelType: NavigationRailLabelType.all,

                        destinations: [
                          NavigationRailDestination(
                            icon: Icon(Icons.home),
                            selectedIcon: Icon(Icons.home),
                            label: Text("HOME"),
                          ),
                          NavigationRailDestination(
                            icon: Icon(Icons.search),
                            selectedIcon: Icon(Icons.compare_arrows),
                            label: Text("Search"),
                          ),

                          NavigationRailDestination(
                            icon: Icon(Icons.person_2_outlined),
                            selectedIcon: Icon(Icons.person),
                            label: Text("Profile"),
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      child: screen[index],
                    ),
                  ],
                );
              }

              return screen[index];
            },
          ),

          bottomNavigationBar: LayoutBuilder(
            builder: (context, constraints) {
              final width = constraints.maxWidth;

              if (width >= 600) {
                return SizedBox();
              }

              return Container(
                height: width < 400 ? 80 : 100,

                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFF161225),
                    width: 1,
                  ),
                ),

                child: BottomNavigationBar(
                  backgroundColor: Color(0xFF0D0A16),

                  selectedItemColor: Colors.lightGreen,

                  unselectedItemColor: Colors.grey.shade600,

                  type: BottomNavigationBarType.fixed,

                  currentIndex: index,

                  onTap: (index) {
                    _Slectindex.value = index;
                  },

                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                        size: width < 400 ? 23 : 26,
                      ),
                      label: "HOME",
                    ),

                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.search,
                        size: width < 400 ? 23 : 26,
                      ),
                      label: "Search",
                    ),

                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person_2_outlined,
                        size: width < 400 ? 23 : 26,
                      ),
                      label: "profile",
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
