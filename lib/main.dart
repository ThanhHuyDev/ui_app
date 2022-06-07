import 'package:flutter/material.dart';
import 'package:ui_app/screens/home/home_screens.dart';
import 'package:ui_app/screens/signin/sign_in_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Muli'
      ),
      home: const HomeScreens(),
    );
  }
}
