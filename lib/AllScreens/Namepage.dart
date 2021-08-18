import 'package:flutter/material.dart';
import 'package:stage_one_application/AllScreens/Homepage.dart';
import 'package:url_launcher/url_launcher.dart';

class NamePage extends StatelessWidget {
  static const String idScreen = "nameScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _builddrawer(context),
      appBar: AppBar(
        title: Text('Simple Program'),
      ),
      body: _buildcontent(context),
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
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  "Homepage",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
            ),
           
          ],
        ),
      ),
    );
  }

  Widget _buildcontent(BuildContext context) {
    return Center(
      child: Container(
        child: Column(children: [
            Image(
            image: AssetImage("images/zurilogo.png"),
            width: 200.0,
            height: 180.0,
            alignment: Alignment.center,
          ),
          SizedBox(
            height: 8.0,
          ),
          GestureDetector(
            onTap: ()=> launch('https://internship.zuri.team/') ,
            child: Text('https://internship.zuri.team/',
            style: TextStyle(
            color: Colors.blue[600],
            decorationStyle: TextDecorationStyle.solid ),),
          ),

          SizedBox(
            height: 16.0
          ),

            Text(
          'Anjorin Israel Ayomide',
          style: TextStyle( fontSize: 36.0),
        ),
        ],),
       
      ),
    );
  }
}
