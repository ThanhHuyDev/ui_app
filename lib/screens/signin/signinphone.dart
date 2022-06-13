import 'package:flutter/material.dart';
import 'package:ui_app/screens/signup/sign_up_screens.dart';
import 'package:ui_app/widgets/appbar.dart';
import 'package:ui_app/widgets/constants.dart';
import 'package:ui_app/widgets/responsive.dart';

class SignInPhoneScreens extends StatefulWidget {
  const SignInPhoneScreens({Key? key}) : super(key: key);

  @override
  State<SignInPhoneScreens> createState() => _SignInPhoneScreensState();
}

class _SignInPhoneScreensState extends State<SignInPhoneScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Appbar(
                title: "Đăng Nhập",
              ),
              SizedBox(
                height: getsizeHeight(70),
              ),
              Padding(
                padding: EdgeInsets.only(left: getsizeWidth(30)),
                child: Text(
                  'My mobile',
                  style: TextStyle(fontSize: getsizeHeight(35)),
                ),
              ),
              SizedBox(
                height: getsizeHeight(10),
              ),
              Padding(
                padding: EdgeInsets.only(left: getsizeWidth(30)),
                child: Text(
                  'Please enter your valid phone number. We will\nsend you a 4 -digit code to verityt your account.',
                  style: TextStyle(
                      fontSize: getsizeHeight(13), color: Colors.black38),
                ),
              ),
              SizedBox(
                height: getsizeHeight(20),
              ),
              Container(
                padding: EdgeInsets.only(left: getsizeWidth(10)),
                margin: EdgeInsets.only(
                    left: getsizeWidth(30), right: getsizeWidth(30)),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black12, width: getsizeWidth(1)),
                    borderRadius: BorderRadius.circular(getsizeHeight(13))),
                width: double.infinity,
                height: getsizeHeight(50),
                child: Row(
                  children: [
                    Text(
                      'Việt Nam',
                      style: TextStyle(fontSize: getsizeHeight(16)),
                    ),
                    SizedBox(
                      width: getsizeWidth(5),
                    ),
                    Text(
                      '(+84)',
                      style: TextStyle(fontSize: getsizeHeight(16)),
                    ),
                    SizedBox(
                      width: getsizeWidth(10),
                    ),
                    Container(
                      height: getsizeHeight(30),
                      decoration: BoxDecoration(
                          border: Border(
                              right: BorderSide(
                                  width: getsizeWidth(1),
                                  color: Colors.black26))),
                    ),
                    SizedBox(
                      width: getsizeWidth(10),
                    ),
                    Expanded(
                      child: TextFormField(
                        style: TextStyle(fontSize: getsizeHeight(16)),
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Enter your phone...',
                          hintStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: getsizeHeight(16)),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: getsizeHeight(15)),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: getsizeHeight(20),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreens()));
                },
                child: Container(
                  margin: EdgeInsets.only(
                      left: getsizeWidth(30), right: getsizeWidth(30)),
                  decoration: BoxDecoration(
                      gradient: kPrimaryGradientLeftToRightColor,
                      border: Border.all(
                          color: Colors.black12, width: getsizeWidth(1)),
                      borderRadius: BorderRadius.circular(getsizeWidth(13))),
                  width: double.infinity,
                  height: getsizeHeight(50),
                  child: Center(
                      child: Text(
                    'Continute',
                    style: TextStyle(
                        fontSize: getsizeHeight(17), color: Colors.white),
                  )),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
