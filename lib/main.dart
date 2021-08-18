import 'package:flutter/material.dart';
import 'package:stage_one_application/AllScreens/Homepage.dart';
import 'package:stage_one_application/AllScreens/Namepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile dev Track',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
       initialRoute: HomePage.idScreen,
        routes:
        {
          HomePage.idScreen: (context) => HomePage(),
          NamePage.idScreen: (context) => NamePage(),
        },
    );
  }
}

