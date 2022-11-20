import 'package:flutter/material.dart';
import 'package:ifitcare/UI/CoachTabs/manage_client.dart';
import 'package:ifitcare/UI/CoachTabs/manage_meetings.dart';

class CoachHome extends StatefulWidget {
  const CoachHome({Key? key}) : super(key: key);

  @override
  State<CoachHome> createState() => _CoachHomeState();
}

class _CoachHomeState extends State<CoachHome> {

 int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    ManageClient(),
    ManageMeetings(),
    Icon(
      Icons.chat,
      size: 150,
    ),
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
        icon: Icon(Icons.video_camera_front_outlined),
        label: 'Meeting',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
    ],
  ),
);}
}