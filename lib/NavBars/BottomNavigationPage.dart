import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:wms/Screens/homepage.dart';
import 'package:wms/Screens/profilepage.dart';
import 'package:wms/Screens/verificationpage.dart';
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  var children = [
    homepage(),
    VerificationPage(),
    ProfilePage(),
  ];
  void _onChanged(int index){
    setState((){
      _currentIndex=index;
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
    icon: Icon(Icons.verified_outlined),
    title: Text("Verification"),
    selectedColor: Colors.black,
    ),

          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Colors.black,
          ),

    ],
    ),
    );
  }

}
