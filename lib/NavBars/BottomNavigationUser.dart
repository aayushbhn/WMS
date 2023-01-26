import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../ScreensUser/dataentry.dart';
import '../ScreensUser/homepageuser.dart';
import '../ScreensUser/wallet.dart';
class BottomNavigationUser extends StatefulWidget {
  const BottomNavigationUser({Key? key}) : super(key: key);

  @override
  State<BottomNavigationUser> createState() => _BottomNavigationUserState();
}

class _BottomNavigationUserState extends State<BottomNavigationUser> {
  int _currentIndex = 0;
  var children = [
    HomePage(),
    DataEntryPage(),
    WalletPage(),
  ];

  void _onChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      // appBar: ,
      body: children[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        onTap: _onChanged,
        currentIndex: _currentIndex,
        items: [

          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.black,
          ),


          SalomonBottomBarItem(
            icon: Icon(Icons.tab_sharp),
            title: Text("Data Entry"),
            selectedColor: Colors.black,
          ),

          SalomonBottomBarItem(
            icon: Icon(Icons.wallet),
            title: Text("Wallet"),
            selectedColor: Colors.black,
          ),

        ],
      ),
    );
  }
}
