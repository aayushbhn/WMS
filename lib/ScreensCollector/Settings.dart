import 'package:flutter/material.dart';

import '../NavBars/sideNavbar.dart';



class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],


      drawer:sideNav(),
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Account'),
            onTap: () {
              // Handle option 1 tap
            },
          ),
          ListTile(
            title: Text('Notifications'),
            onTap: () {
              // Handle option 2 tap
            },
          ),

          ListTile(
            title: Text('Security'),
            onTap: () {
              // Handle option 2 tap
            },
          ),
          ListTile(
            title: Text('Dark Mode'),
            trailing: Switch(
              value: _darkMode,
              onChanged: (value) {
                setState(() {
                  _darkMode = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('Help'),
            onTap: () {
              // Handle option 2 tap
            },
          ),
          ListTile(
            title: Text('About'),
            onTap: () {
              // Handle option 2 tap
            },
          ),
        ],
      ),
    );
  }
}