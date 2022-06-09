import 'package:flutter/material.dart';
import 'package:ui_app/screens/profile_setup/profile_setup2.dart';
import 'package:ui_app/widgets/sizeconfig.dart';

import '../../widgets/constants.dart';

class ProfileSetupScreens1 extends StatefulWidget {
  const ProfileSetupScreens1({Key? key}) : super(key: key);

  @override
  State<ProfileSetupScreens1> createState() => _ProfileSetupScreensState();
}

class _ProfileSetupScreensState extends State<ProfileSetupScreens1> {
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
                  'Profile details',
                  style: TextStyle(fontSize: getsizeHeight(35)),
                ),
              ),
              SizedBox(
                height: getsizeHeight(70),
              ),
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: getsizeWidth(80),
                      height: getsizeHeight(80),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: getsizeWidth(1), color: Colors.white10),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://phunugioi.com/wp-content/uploads/2020/01/anh-avatar-supreme-dep-lam-dai-dien-facebook.jpg'),
                              fit: BoxFit.cover),
                          borderRadius:
                              BorderRadius.circular(getsizeHeight(20))),
                    ),
                    Positioned(
                        bottom: getsizeHeight(-4),
                        right: getsizeWidth(-4),
                        child: Container(
                          width: getsizeWidth(33),
                          height: getsizeHeight(33),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 211, 151, 38),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: getsizeHeight(1.5),
                                  color: Colors.white)),
                          child: Icon(
                            Icons.camera_alt_outlined,
                            size: getsizeHeight(20),
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: getsizeHeight(40),
              ),
              buildFirstNameFormField(),
              SizedBox(
                height: getsizeHeight(20),
              ),
              buildLastNameFormField(),
              SizedBox(
                height: getsizeHeight(20),
              ),
              buildBirthdayFormField(),
              SizedBox(height: getsizeHeight(100)),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileSetupScreens2()));
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
                        'Confirm',
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

  Container buildFirstNameFormField() {
    return Container(
      width: double.infinity,
      height: getsizeHeight(60),
      padding: EdgeInsets.only(left: getsizeWidth(30), right: getsizeWidth(30)),
      child: TextFormField(
        decoration: formFirstNameInputdecoration
      ),
    );
  }

  Container buildLastNameFormField() {
    return Container(
      width: double.infinity,
      height: getsizeHeight(60),
      padding: EdgeInsets.only(left: getsizeWidth(30), right: getsizeWidth(30)),
      child: TextFormField(
        decoration: formLastNameInputdecoration
      ),
    );
  }

  Padding buildBirthdayFormField() {
    return Padding(
      padding: EdgeInsets.only(left: getsizeWidth(30), right: getsizeWidth(30)),
      child: Container(
        width: double.infinity,
        height: getsizeHeight(60),
        padding: EdgeInsets.only(left: getsizeWidth(20)),
        decoration: BoxDecoration(
            color: Colors.deepPurple[300],
            borderRadius: BorderRadius.all(Radius.circular(getsizeWidth(20)))),
        child: Row(
          children: [
            Icon(
              Icons.calendar_month_outlined,
              color: Colors.deepPurple,
              size: getsizeHeight(20),
            ),
            SizedBox(
              width: getsizeWidth(30),
            ),
            Text(
              'Choose birthday date',
              style: TextStyle(
                  fontSize: getsizeHeight(18), color: Colors.deepPurple),
            )
          ],
        ),
      ),
    );
  }
}
