import 'package:flutter/material.dart';
import 'package:wms/NavBars/BottomNavigationPage.dart';
import '../NavBars/sideNavbar.dart';
class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        drawer: sideNav(),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('HomePage'),

        ),
        body: Center(
          child: Text('All the waste needed to be collected is shown here'),
        ),
  bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}
