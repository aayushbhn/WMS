import 'package:flutter/material.dart';
import 'package:wms/NavBars/sideNavbar.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      drawer: sideNav(),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Profile'),

      ),
    );
  }
}
