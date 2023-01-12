import 'package:flutter/material.dart';
import 'package:wms/NavBars/BottomNavigationPage.dart';
import 'package:wms/Screens/homepage.dart';
import 'package:wms/Screens/homepage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Waste Recyclers',
      home:BottomNavigation(),
    );
  }
}