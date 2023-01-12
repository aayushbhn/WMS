import 'package:flutter/material.dart';
import 'package:wms/NavBars/sideNavbar.dart';

import '../NavBars/BottomNavigationPage.dart';
class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.grey[300],
      drawer: sideNav(),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Verification Page'),

      ),
      body:SafeArea(
        child:SingleChildScrollView(
              child: Column(
                children: [

                  SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: TextField(

                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.monitor_weight_outlined,
                          color: Colors.green,
                        ),
                        labelText: 'Enter Exact Weight',
                        hintText: 'Weight',
                        border: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    ),


                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 135.0),
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Colors.green[200],
                              title: Row(
                                children: [
                                  Icon(Icons.verified_outlined),
                                  Text('  Verified ')
                                ],
                              ),

                              content: Text("Release Payment?"),
                              actions: [
                                ElevatedButton(

                                  child: Text("Release"),
                                  onPressed: () {
                                    Navigator.of(context).pop();

                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.green[800],
                                  )
                                ),
                                ElevatedButton(
                                  child: Text('Edit Price'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.green[800],
                                    )
                                )

                              ],
                            );
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape:
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                      child: Ink(
                        decoration: BoxDecoration(
                            color: Colors.green, borderRadius: BorderRadius.circular(24)),

                        child: Container(

                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Verify Weight',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
        ) ,
      ),

    );
  }
}
