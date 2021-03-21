import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tezbazar_demo/ui/profile/profile_screen.dart';

import 'constants.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var _selectedIndex = 4;

  @override
  void initState() {
    super.initState();
  }

  var screens = [
    Container(
      child: Center(child: Text("Главная")),
    ),
    Container(
      child: Center(child: Text("Каталог")),
    ),
    Container(
      child: Center(child: Text("Поиск")),
    ),
    Container(
      child: Center(child: Text("Баланс: 999 тыс. сум")),
    ),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color(0xFF2B2B2B),
        selectedItemColor: kPrimaryColor,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SvgPicture.asset("assets/icons/home.svg",
                  height: 25,
                  color:
                      _selectedIndex == 0 ? kPrimaryColor : Color(0xFF2B2B2B)),
            ),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SvgPicture.asset(
                'assets/icons/categories.svg',
                height: 25,
                color: _selectedIndex == 1 ? kPrimaryColor : Color(0xFF2B2B2B),
              ),
            ),
            label: 'Каталог',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SvgPicture.asset(
                'assets/icons/search.svg',
                height: 25,
                color: _selectedIndex == 2 ? kPrimaryColor : Color(0xFF2B2B2B),
              ),
            ),
            label: 'Поиск',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SvgPicture.asset(
                'assets/icons/cart.svg',
                height: 25,
                color: _selectedIndex == 3 ? kPrimaryColor : Color(0xFF2B2B2B),
              ),
            ),
            label: '999 тыс. сум',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SvgPicture.asset(
                'assets/icons/profile.svg',
                height: 25,
                color: _selectedIndex == 4 ? kPrimaryColor : Color(0xFF2B2B2B),
              ),
            ),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}
