import 'package:flutter/material.dart';
import 'package:ui_app/widgets/responsive.dart';

import '../../widgets/constants.dart';
import '../profile_setup/profile_setup1.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: getsizeHeight(70),
                width: getsizeWidth(60),
                child: TextFormField(
                  style:  TextStyle(fontSize: getsizeHeight(24)),
                  obscureText: true,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  decoration: otpInputdecoration,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //also you need to store your value
                    nextField(value: value, focusNode: pin2FocusNode);
                  },
                ),
              ),
              SizedBox(
                height: getsizeHeight(70),
                width: getsizeWidth(60),
                child: TextFormField(
                  style:  TextStyle(fontSize: getsizeHeight(24)),
                  obscureText: true,
                  focusNode: pin2FocusNode,
                  keyboardType: TextInputType.number,
                  decoration: otpInputdecoration,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin3FocusNode);
                  },
                ),
              ),
              SizedBox(
                height: getsizeHeight(70),
                width: getsizeWidth(60),
                child: TextFormField(
                  style:  TextStyle(fontSize: getsizeHeight(24)),
                  obscureText: true,
                  focusNode: pin3FocusNode,
                  keyboardType: TextInputType.number,
                  decoration: otpInputdecoration,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin4FocusNode);
                  },
                ),
              ),
              SizedBox(
                height: getsizeHeight(70),
                width: getsizeWidth(60),
                child: TextFormField(
                  style: TextStyle(fontSize: getsizeHeight(24)),
                  obscureText: true,
                  focusNode: pin4FocusNode,
                  keyboardType: TextInputType.number,
                  decoration: otpInputdecoration,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    pin4FocusNode.unfocus();
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: getsizeHeight(30),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileSetupScreens1()));
            },
            child: Container(
              width: double.infinity,
              height: getsizeHeight(50),
              decoration: BoxDecoration(
                  gradient: kPrimaryGradientLeftToRightColor,
                  borderRadius: BorderRadius.circular(getsizeWidth(20))),
              child: Center(
                child: Text(
                  'Continute',
                  style: TextStyle(
                    fontSize: getsizeHeight(17),
                    fontFamily: 'Muli',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
