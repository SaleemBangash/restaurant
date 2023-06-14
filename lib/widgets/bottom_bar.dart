// ignore_for_file: prefer_const_literals_to_create_immutables, deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hotel/screens/home.dart';
import 'package:hotel/screens/profile.dart';

import '../screens/map.dart';

class BottomBar extends StatefulWidget {
  // final Widget body;
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  // void didChangeDependencies() {
  //   sizeConfig = SizeConfig.init(context);
  //   super.didChangeDependencies();
  // }

  // GlobalKey globalKey = new GlobalKey(debugLabel: 'btm_app_bar');
  // int index = 0;
  // late final Widget? body;
  int _selectedIndex = 0;
  final List<Widget> screens = [Home(), MapScreen(), Profile()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool _type = false;

  // void didChangeDependencies() {
  //   sizeConfig = SizeConfig.init(context);
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: widget.body,
      body: Center(
        child: screens[_selectedIndex], //New
      ),
      bottomNavigationBar: BottomNavigationBar(
        // key: globalKey,
        type: BottomNavigationBarType.fixed,
        // currentIndex: _currentIndex,
        backgroundColor: Colors.green,

        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
        selectedFontSize: 0.0,
        unselectedFontSize: 12.0,
        showSelectedLabels: true,
        selectedIconTheme: const IconThemeData(size: 27),
        // unselectedIconTheme: const IconThemeData(size: 22),
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.grey[200],
        // selectedLabelStyle: Colors.accents,
        // unselectedLabelStyle: textTheme.caption,
        // onTap: _onItemTapped,
        // currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: "Map",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: "Profile",
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.black,
        // selectedFontSize: 20,

        onTap: _onItemTapped,
      ),
    );
  }
}
