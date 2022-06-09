import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_app/screens/signin/signinphone.dart';
import 'package:ui_app/widgets/sizeconfig.dart';

import '../../widgets/constants.dart';

class SignInScreens extends StatefulWidget {
  const SignInScreens({Key? key}) : super(key: key);

  @override
  State<SignInScreens> createState() => _SignInScreensState();
}

class _SignInScreensState extends State<SignInScreens> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration:
              const BoxDecoration(gradient: kPrimaryGradientTopToBotColor),
          height: SizeConfig.screenHeight,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: getsizeHeight(100),
                ),
                Image.asset('assets/images/logoSlove.png',
                  height: getsizeHeight(130),
                  width: getsizeWidth(130),
                ),
                SizedBox(
                  height: getsizeHeight(100),
                ),
                Text(
                  "By clicking Log In, you agree with our Terms.\nLearn how we process your data in our Privacy\nPolicy and Cookies Policy.",
                  style: TextStyle(
                      color: Colors.white, fontSize: getsizeHeight(14)),
                ),
                SizedBox(
                  height: getsizeHeight(40),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      margin: EdgeInsets.only(
                          left: getsizeWidth(30), right: getsizeWidth(30)),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(getsizeWidth(30)),
                          border: Border.all(width: 1, color: Colors.black12)),
                      width: double.infinity,
                      height: getsizeHeight(50),
                      child: Stack(
                        children: [
                          Center(
                              child: Text("LOGIN WITH GOOGLE+",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: getsizeHeight(16)))),
                          Positioned(
                              left: getsizeWidth(20),
                              top: getsizeHeight(14),
                              child: SvgPicture.asset(
                                'assets/icons/ic_google.svg',
                                height: getsizeHeight(20),
                                width: getsizeWidth(20),
                              ))
                        ],
                      )),
                ),
                SizedBox(
                  height: getsizeHeight(20),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      margin: EdgeInsets.only(
                          left: getsizeWidth(30), right: getsizeWidth(30)),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(getsizeWidth(30)),
                          border: Border.all(
                              width: getsizeWidth(1), color: Colors.black12)),
                      width: double.infinity,
                      height: getsizeHeight(50),
                      child: Stack(
                        children: [
                          Center(
                              child: Text("LOGIN WITH FACEBOOK",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: getsizeHeight(16)))),
                          Positioned(
                              left: getsizeWidth(20),
                              top: getsizeHeight(14),
                              child: SvgPicture.asset(
                                'assets/icons/ic_facebook.svg',
                                width: getsizeWidth(20),
                                height: getsizeHeight(20),
                              ))
                        ],
                      )),
                ),
                SizedBox(
                  height: getsizeHeight(20),
                ),
                GestureDetector(
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInPhoneScreens()));
                  }),
                  child: Container(
                      margin: EdgeInsets.only(
                          left: getsizeWidth(30), right: getsizeWidth(30)),
                      decoration: BoxDecoration(
                          gradient: kPrimaryGradientLeftToRightColor,
                          borderRadius:
                              BorderRadius.circular(getsizeWidth(30))),
                      width: double.infinity,
                      height: getsizeHeight(50),
                      child: Stack(
                        children: [
                          Center(
                              child: Text("LOGIN WITH PHONE",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: getsizeHeight(16)))),
                          Positioned(
                              left: getsizeWidth(20),
                              top: getsizeHeight(14),
                              child: Icon(
                                Icons.phone,
                                color: Colors.white,
                                size: getsizeHeight(20),
                              ))
                        ],
                      )),
                ),
                SizedBox(
                  height: getsizeHeight(100),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInPhoneScreens()));
                  },
                  child: Text(
                    'Don\'t have account? SignUp',
                    style: TextStyle(
                        color: Colors.white, fontSize: getsizeHeight(16)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
