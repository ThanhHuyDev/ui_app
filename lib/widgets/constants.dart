import 'package:flutter/material.dart';

import 'responsive.dart';

const kPrimaryColorDeepPurple = Colors.deepPurple;
final kPrimaryColorDeepPurpleBackground = Colors.deepPurple[50];
const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryDartColor = Color(0xFF1B070B);
const kPrimaryGradientLeftToRightColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFBC7BE4), Color(0xFFFF7643)],
);
const kPrimaryGradientRightToLeftColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFF7643), Color(0xFFBC7BE4)],
);
const kPrimaryGradientRightToLeftColorUser = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Colors.deepPurple, Color.fromARGB(255, 235, 156, 218)],
);
const kPrimaryGradientTopToBotColor = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color(0xFFBC7BE4), Color.fromARGB(255, 221, 140, 110)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const Color white = Colors.white;
const Color grey = Colors.grey;
const Color black = Colors.black;
const Color green = Colors.green;
const Color primary = Color(0xFFFD5C61);

// gradient
const Color yellow_one = Color(0xFFeec365);
const Color yellow_two = Color(0xFFde9024);
const Color primary_one = Color(0xFFfc3973);
const Color primary_two = Color(0xFFfd5f60);

const kAnimationDuration = Duration(milliseconds: 200);
const headingStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);
const headline = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: Color(0xFF757575),
  height: 1.5,
);
const bodytext12 = TextStyle(
  fontSize: 12.0,
  color: Color(0xFF757575),
  height: 1.5,
);
const bodytext14 = TextStyle(
  fontSize: 14.0,
  color: Color(0xFF757575),
  height: 1.5,
);
const bodytext16 = TextStyle(
  fontSize: 16.0,
  color: Color(0xFF757575),
  height: 1.5,
);
const bodytext18 = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF757575),
  height: 1.5,
);
final otpInputdecoration = InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 15),
    enabledBorder: outlineInputBorder(),
    focusedBorder: outlineInputBorder(),
    border: outlineInputBorder());
    
OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Colors.black));
}

final formFirstNameInputdecoration = InputDecoration(
  enabledBorder: outlineInputBorder1(),
  focusedBorder: outlineInputBorder1(),
  border: outlineInputBorder1(),
  labelText: "First Name",
  hintText: 'David',
  hintStyle: TextStyle(fontSize: getsizeHeight(16)),
  floatingLabelBehavior: FloatingLabelBehavior.always,
  contentPadding: EdgeInsets.symmetric(
      horizontal: getsizeWidth(20), vertical: getsizeHeight(17)),
  labelStyle: TextStyle(fontSize: getsizeHeight(17)),
);

final formLastNameInputdecoration = InputDecoration(
  enabledBorder: outlineInputBorder1(),
  focusedBorder: outlineInputBorder1(),
  border: outlineInputBorder1(),
  labelText: "Last Name",
  hintText: 'Peterson',
  hintStyle: TextStyle(fontSize: getsizeHeight(16)),
  floatingLabelBehavior: FloatingLabelBehavior.always,
  contentPadding: EdgeInsets.symmetric(
      horizontal: getsizeWidth(20), vertical: getsizeHeight(17)),
  labelStyle: TextStyle(fontSize: getsizeHeight(17)),
);

OutlineInputBorder outlineInputBorder1() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Colors.black38));
}
