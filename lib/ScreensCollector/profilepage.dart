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
      drawer:sideNav(),
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,


          children: [
            CircleAvatar(

              backgroundImage: AssetImage('assets/ic_person.jpg'),
              radius: 60,
              child: Container(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(Icons.edit,color: Colors.yellowAccent ),

                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text(
                "Bam Bholey",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  letterSpacing: 4,
                ),
              ),
            ),
            Center(
              child: Text("Level 1",textAlign: TextAlign.center,style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                letterSpacing: 2,

              ),),
            ),

            SizedBox(
              height: 30,
            ),
            Card(
              color: Colors.grey[50],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                leading: Icon(Icons.call, color: Colors.green,),
                title: Text("+977 9851289653",style: TextStyle(color: Colors.black,),),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              color: Colors.grey[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                leading: Icon(Icons.mail, color: Colors.green),
                title: Text("jaysambhoooo.com",style: TextStyle(color: Colors.black,),),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              color: Colors.grey[300],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.green,),
                title: Text("Mitrapark,Kathmandu",style: TextStyle(color: Colors.black,),),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              color: Colors.grey[500],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                leading: Icon(Icons.work, color: Colors.green,),
                title: Text("Pashupatinath,Kathmandu",style: TextStyle(color: Colors.black,),),
              ),
            ),
            SizedBox(
              height: 10,
            ),

          ],
        ),
      ),
    );
  }
}
