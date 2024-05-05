// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:PetPals/homescreen.dart';
import 'package:PetPals/profile.dart';
import 'package:PetPals/search.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[Home(), Search(), Profile()];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
        bottomNavigationBar:
            BottomNavigationBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ('Search')),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ('Profile'))
        ], currentIndex: _selectedIndex, onTap: _onItemTap));
  }
}
