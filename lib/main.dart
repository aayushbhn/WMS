import 'package:flutter/material.dart';
import 'package:wms/NavBars/BottomNavigationPageCollector.dart';


import 'ScreensCollector/splash.dart';
void main() {
  runApp(MyApp(

  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Waste Recyclers',
      home:SplashScreen(

      ),
    );
  }
}