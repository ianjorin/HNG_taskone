import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stage_one_application/AllScreens/Confirmationpage.dart';
import 'package:stage_one_application/AllScreens/Namepage.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  static const String idScreen = "homeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: _builddrawer(context),
        appBar: AppBar(
          title: Text('Stage Two Task'),
        ),
        body: _buildcontent(context));
  }
}

displayToastMessage(String message, BuildContext context) {
  Fluttertoast.showToast(msg: message);
}

Widget _buildcontent(BuildContext context) {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController displaynameTextEditingController =
      TextEditingController();
  TextEditingController trackTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  return SingleChildScrollView(
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 8.0,
          ),
          Image(
            image: AssetImage("images/I4Glogo.png"),
            width: 200.0,
            height: 180.0,
            alignment: Alignment.center,
          ),
          SizedBox(
            height: 8.0,
          ),
          GestureDetector(
            onTap: ()=> launch('https://ingressive.org/') ,
            child: Text('https://ingressive.org/',
            style: TextStyle(
            color: Colors.blue[600],
            decorationStyle: TextDecorationStyle.solid ),),
          ),

          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 1.0,
                ),
                TextField(
                  controller: nameTextEditingController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    labelStyle: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.0,
                    ),
                  ),
                  style: TextStyle(fontSize: 14.0),
                ),
                SizedBox(
                  height: 1.0,
                ),
                TextField(
                  controller: displaynameTextEditingController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "display Name",
                    labelStyle: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.0,
                    ),
                  ),
                  style: TextStyle(fontSize: 14.0),
                ),
                SizedBox(
                  height: 1.0,
                ),
                TextField(
                  controller: trackTextEditingController,
                  decoration: InputDecoration(
                    labelText: "What Track Are You In?",
                    labelStyle: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.0,
                    ),
                  ),
                  style: TextStyle(fontSize: 14.0),
                ),
                SizedBox(
                  height: 1.0,
                ),
                TextField(
                  controller: phoneTextEditingController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "Contact",
                    labelStyle: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.0,
                    ),
                  ),
                  style: TextStyle(fontSize: 14.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  color: Colors.purple[500],
                  textColor: Colors.white,
                  child: Container(
                    height: 50.0,
                    child: Center(
                      child: Text(
                        "Save",
                        style:
                            TextStyle(fontSize: 18.0, fontFamily: "Brand Bold"),
                      ),
                    ),
                  ),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(24.0),
                  ),
                  onPressed: () {
                    if (nameTextEditingController.text.length < 3) {
                      displayToastMessage(
                          "name must be atleast 3 Characters.", context);
                    } else if (phoneTextEditingController.text.isEmpty) {
                      displayToastMessage(
                          "Contact Number is mandatory.", context);
                    } else if (trackTextEditingController.text.isEmpty) {
                      displayToastMessage("Please Enter Track.", context);
                    } else if (displaynameTextEditingController.text.length <
                        6) {
                      displayToastMessage(
                          "display must be atleast 6 Characters.", context);
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ConfirmationPage(fullname:nameTextEditingController.text,displayname:displaynameTextEditingController.text ,track: trackTextEditingController.text ,phone: phoneTextEditingController.text ,)));
                      //registerNewUser(context);
                    }
                  },
                ),
              ],
            ),
          ),
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => NamePage()));
            },
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text(
                "Simple Program",
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => ProfileTabPage()));
          //   },
          //   child: ListTile(
          //     leading: Icon(Icons.person),
          //     title: Text(
          //       "Visit Profile",
          //       style: TextStyle(fontSize: 15.0),
          //     ),
          //   ),
          // ),
        ],
      ),
    ),
  );
}
