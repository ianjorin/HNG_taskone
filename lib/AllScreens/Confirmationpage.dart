import 'package:flutter/material.dart';
import 'package:stage_one_application/AllScreens/Homepage.dart';
import 'package:stage_one_application/AllScreens/Namepage.dart';

class ConfirmationPage extends StatelessWidget {
  String fullname;
  String displayname;
  String phone;
  String track;
  ConfirmationPage({this.fullname, this.displayname, this.phone, this.track});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: _builddrawer(context),
        appBar: AppBar(
          title: Text('Confirmation Page'),
        ),
        body: _buildcontent(context));
  }

  Widget _buildcontent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 24.0),
            Row(
              children: [
                Text('Full Name:',style: TextStyle(fontSize: 24.0,)),
                SizedBox(width: 4.0,),
                Text(fullname,style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600)),
              ],
            ),

            SizedBox(height: 16.0),

            Row(
              children: [
                Text('Display Name :',
                style: TextStyle(fontSize: 24.0,)),
                SizedBox(width: 4.0,),
                Text(displayname,style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600)),
              ],
            ),

            SizedBox(height: 16.0),

            Row(
              children: [
                Text('Work Track :',
                style: TextStyle(fontSize: 24.0,)),
                SizedBox(width: 4.0,),
                Text(track,style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.w600)),
              ],
            ),

            SizedBox(height: 16.0),

            Row(
              children: [
                Text('Contact :',
                style: TextStyle(fontSize: 24.0,)),
                SizedBox(width: 4.0,),
                Text(phone,style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.w600)),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _builddrawer(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 255.0,
      child: Drawer(
        child: ListView(
          children: [
            //Drawer Body Contrllers
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NamePage()));
              },
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  "Simple Program",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  "Home",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
