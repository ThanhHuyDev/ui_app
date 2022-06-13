import 'package:flutter/material.dart';
import 'package:ui_app/screens/signup/otp_form.dart';
import 'package:ui_app/widgets/responsive.dart';

class SignUpScreens extends StatefulWidget {
  const SignUpScreens({Key? key}) : super(key: key);

  @override
  State<SignUpScreens> createState() => _SignUpScreensState();
}

class _SignUpScreensState extends State<SignUpScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getsizeWidth(30)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: getsizeHeight(20)),
                  InkWell(
                    borderRadius: BorderRadius.circular(getsizeWidth(7)),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: getsizeWidth(40),
                      height: getsizeHeight(40),
                      padding: EdgeInsets.only(left: getsizeWidth(6)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(getsizeHeight(7)),
                          border: Border.all(
                              width: getsizeWidth(1), color: Colors.black12)),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.orange[300],
                        size: getsizeHeight(20),
                      ),
                    ),
                  ),
                  SizedBox(height: getsizeHeight(50)),
                  Center(
                    child: Text(
                      "OTP Verification",
                      style: TextStyle(
                          fontSize: getsizeHeight(30),
                          color: Colors.deepOrangeAccent),
                    ),
                  ),
                  Center(
                    child: Text(
                      "We sent your code to +84 344 544 668",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: getsizeHeight(15),
                          color: Colors.black,
                          fontFamily: "Muli"),
                    ),
                  ),
                  buildTimer(),
                  SizedBox(height: getsizeHeight(20)),
                  OtpForm(),
                  SizedBox(height: getsizeHeight(20)),
                  GestureDetector(
                    onTap: () {
                      // OTP code resend
                    },
                    child: Center(
                      child: Text(
                        "Resend OTP Code",
                        style: TextStyle(
                            fontSize: getsizeHeight(15),
                            decoration: TextDecoration.underline,
                            fontFamily: "Muli"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "This code will expired in ",
          style: TextStyle(fontFamily: "Muli", fontSize: getsizeHeight(16)),
        ),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: const Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(
                color: Colors.orange,
                fontFamily: "Muli",
                fontSize: getsizeHeight(16)),
          ),
        ),
      ],
    );
  }
}
