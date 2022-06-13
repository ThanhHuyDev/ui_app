// @dart=2.9
import 'package:flutter/material.dart';
import 'package:ui_app/screens/home/home_screens.dart';
import 'package:ui_app/screens/screens.dart';
void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
       debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Muli'
      ),
      home: const SplashScreens(),
    );
  }
}
