import 'package:flutter/material.dart';
import 'package:wms/lgoinpage.dart';

import '../ScreensCollector/Settings.dart';
import '../ScreensCollector/feedback.dart';
import 'BottomNavigationPageCollector.dart';
class sideNav extends StatelessWidget {
  const sideNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(

            child: Text(
              'Collector',

              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            padding: EdgeInsets.only(top: 130,left: 100),
            decoration: BoxDecoration(


                image: DecorationImage(
                  alignment: Alignment.centerRight,
                    fit: BoxFit.fill,


                    image: AssetImage('assets/cover.jpg'))),
          ),


          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigation()))},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()))},
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text('To Do'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()))},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => FeedbackPage()))},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()))},
          ),
        ],
      ),
    );
  }
}
