import 'package:flutter/material.dart';
import 'package:ifitcare/UI/UserTabs/user_profile.dart';

import 'UserTabs/workout_page.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {

  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    WorkoutPage(),
    Icon(
      Icons.camera,
      size: 150,
    ),
    UserProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
  // appBar: AppBar(
  // ),
  body:Center(
        child: _pages.elementAt(_selectedIndex),
      ),
  bottomNavigationBar: BottomNavigationBar(
    currentIndex: _selectedIndex,
        onTap: _onItemTapped,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.food_bank_outlined),
        label: 'Diet Plan',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
    ],
  ),
);
    
  }
}

