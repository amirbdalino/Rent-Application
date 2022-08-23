// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:house_rent_application/home/home_page.dart';
import 'package:house_rent_application/pages/guesthouse.dart';
import 'package:house_rent_application/pages/rent_page.dart';
import 'package:house_rent_application/pages/setting.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedindex = 0;
  //create list of screens

  // ignore: non_constant_identifier_names
  static final List<Widget> NavScreens = <Widget>[
    HomePage(),
    Rent(),
    GuestHouse(),
    SetttinPage(

    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: NavScreens.elementAt(_selectedindex),
      ),
      bottomNavigationBar: Container(
        color: Color.fromRGBO(0, 0, 0, 1),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 6,
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.house,
                text: 'For Rent',
              ),
              GButton(icon: Icons.house_siding_sharp, text: 'Guest House'),
              GButton(
                icon: Icons.menu,
                text: 'Menu',
              ),
            ],
            selectedIndex: _selectedindex,
            onTabChange: (index) {
              setState(() {
                _selectedindex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
