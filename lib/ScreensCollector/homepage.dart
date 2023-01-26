import 'package:flutter/material.dart';
import 'package:wms/NavBars/BottomNavigationPageCollector.dart';

import 'package:wms/NavBars/sideNavbar.dart';

import '../widgets/linepainter.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      drawer: sideNav(),
      appBar: AppBar(
  backgroundColor: Colors.green,
        title: Text('HomePage'),

      ),

      body:
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 395,
                color: Colors.grey[700],
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: CustomPaint(
                    size: Size(100, 50),
                    painter: LinePainter(),
                    child: Text(

                      "User Location and Information is displayed here. ",
                      textAlign: TextAlign.center,

                    ),

                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                height: 150,
                width: 395,
                color: Colors.grey[700],
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: CustomPaint(
                    size: Size(100, 50),
                    painter: LinePainter(),
                    child: Text(

                      "User Location and Information is displayed here. ",
                      textAlign: TextAlign.center,

                    ),
                  ),
                ),

              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 395,
                color: Colors.grey[700],

                child:

                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: CustomPaint(

                    size: Size(100, 50),
                    painter: LinePainter(),
                    child: Text(

                      "User Location and Information is displayed here. ",
                      textAlign: TextAlign.center,

                    ),
                  ),
                ),
              ),
            ),
          ],
        )

    );
  }
}
