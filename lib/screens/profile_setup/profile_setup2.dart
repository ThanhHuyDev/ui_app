import 'package:flutter/material.dart';
import 'package:ui_app/screens/profile_setup/profile_setup3.dart';
import '../../widgets/constants.dart';
import '../../widgets/responsive.dart';

class ProfileSetupScreens2 extends StatefulWidget {
  const ProfileSetupScreens2({Key? key}) : super(key: key);

  @override
  State<ProfileSetupScreens2> createState() => _ProfileSetupScreensState();
}

class _ProfileSetupScreensState extends State<ProfileSetupScreens2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: getsizeHeight(50),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: getsizeWidth(30)),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(getsizeHeight(7)),
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: getsizeWidth(40),
                        height: getsizeHeight(40),
                        padding: EdgeInsets.only(left: getsizeWidth(6)),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(getsizeHeight(7)),
                            border: Border.all(
                                width: getsizeWidth(1), color: Colors.black12)),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.orange[300],
                          size: getsizeHeight(25),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: getsizeWidth(30)),
                    child: Text(
                      'skip',
                      style: TextStyle(
                          fontSize: getsizeHeight(18),
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getsizeHeight(40),
              ),
              Padding(
                padding: EdgeInsets.only(left: getsizeWidth(30)),
                child: Text(
                  'I am a',
                  style: TextStyle(fontSize: getsizeHeight(35)),
                ),
              ),
              SizedBox(
                height: getsizeHeight(120),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: getsizeWidth(20), right: getsizeWidth(20)),
                margin: EdgeInsets.only(
                    left: getsizeWidth(30), right: getsizeWidth(30)),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: getsizeWidth(1), color: Colors.black26),
                    borderRadius: BorderRadius.circular(getsizeWidth(20))),
                width: double.infinity,
                height: getsizeHeight(60),
                child: Row(children: [
                  Text(
                    'Wonman',
                    style: TextStyle(
                        fontSize: getsizeHeight(17), color: Colors.deepPurple),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.check,
                    color: Colors.deepPurple,
                    size: getsizeHeight(25),
                  )
                ]),
              ),
              SizedBox(height: getsizeHeight(15)),
              Container(
                padding: EdgeInsets.only(
                    left: getsizeWidth(20), right: getsizeWidth(20)),
                margin: EdgeInsets.only(
                    left: getsizeWidth(30), right: getsizeWidth(30)),
                decoration: BoxDecoration(
                    gradient: kPrimaryGradientLeftToRightColor,
                    borderRadius: BorderRadius.circular(getsizeWidth(20))),
                width: double.infinity,
                height: getsizeHeight(60),
                child: Row(children: [
                  Text(
                    'Man',
                    style: TextStyle(
                        fontSize: getsizeHeight(17), color: Colors.deepPurple),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.check,
                    color: Colors.deepPurple,
                    size: getsizeHeight(25),
                  )
                ]),
              ),
              SizedBox(height: getsizeHeight(15)),
              Container(
                padding: EdgeInsets.only(
                    left: getsizeWidth(20), right: getsizeWidth(20)),
                margin: EdgeInsets.only(
                    left: getsizeWidth(30), right: getsizeWidth(30)),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: getsizeWidth(1), color: Colors.black26),
                    borderRadius: BorderRadius.circular(getsizeWidth(20))),
                width: double.infinity,
                height: getsizeHeight(60),
                child: Row(children: [
                  Text(
                    'Choose another',
                    style: TextStyle(
                        fontSize: getsizeHeight(17), color: Colors.deepPurple),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.navigate_next,
                    size: getsizeHeight(25),
                    color: Colors.deepPurple,
                  )
                ]),
              ),
              SizedBox(height: getsizeHeight(180)),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileSetupScreens3()));
                },
                child: Padding(
                  padding: EdgeInsets.only(
                      left: getsizeWidth(30), right: getsizeWidth(30)),
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
                          fontSize: getsizeHeight(18),
                          fontFamily: 'Muli',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
