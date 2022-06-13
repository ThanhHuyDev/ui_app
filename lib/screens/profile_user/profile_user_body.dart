import 'package:flutter/material.dart';
import 'package:ui_app/screens/profile_user/components/button_default.dart';
import 'package:ui_app/screens/profile_user/components/infomation_plan.dart';
import 'package:ui_app/screens/profile_user/components/infomation_user%20copy.dart';
import 'package:ui_app/screens/profile_user/components/settings_user.dart';
import 'package:ui_app/screens/profile_user/profile_user_img.dart';
import 'package:ui_app/widgets/responsive.dart';

class BodyProfileUser extends StatefulWidget {
  const BodyProfileUser({Key? key}) : super(key: key);

  @override
  State<BodyProfileUser> createState() => _BodyProfileUserState();
}

class _BodyProfileUserState extends State<BodyProfileUser> {
  RangeValues values = const RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileUserPic(),
            SizedBox(
              height: getsizeHeight(20),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getsizeWidth(20), vertical: getsizeHeight(10)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Account Settings",
                      style: TextStyle(
                          fontSize: getsizeHeight(22),
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    const Spacer(),
                    Text(
                      "Edit",
                      style: TextStyle(
                          fontSize: getsizeHeight(20),
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                          decoration: TextDecoration.underline),
                    )
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            InfomationUser(
              name: 'Name',
              title: 'Anna',
            ),
            InfomationUser(
              name: 'Phone Number',
              title: '+84789472953',
            ),
            InfomationUser(
              name: 'Date of Birthday',
              title: '22/02/2000',
            ),
            InfomationUser(
              name: 'Email',
              title: 'abcd@gmail.com',
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getsizeWidth(20), vertical: getsizeHeight(10)),
              child: Text(
                "Plan Settings",
                style: TextStyle(
                    fontSize: getsizeHeight(22),
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InfomationPlan(
              name: 'Current Plan',
              title: 'Free',
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: const [
                  Text(
                    "Discovery Settings",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InfomationPlan(
              name: 'Location',
              title: 'My Current Location',
            ),
            InfomationPlan(
              name: 'Preferred Languages',
              title: 'English',
            ),
            InfomationPlan(
              name: 'Show Me',
              title: 'Man',
            ),
            SettingsUser(
              name: 'Age Range',
              title: '22-34',
            ),
            SettingsUser(
              name: 'Maximum Distance',
              title: '100km',
            ),
            SizedBox(
              height: getsizeHeight(20),
            ),
            ButtonDefault(
              press: () {},
              title: 'Logout',
            ),
            SizedBox(
              height: getsizeHeight(20),
            ),
            ButtonDefault(
              press: () {},
              title: 'Delete Account',
            ),
            SizedBox(
              height: getsizeHeight(20),
            ),
          ],
        ),
      ),
    );
  }
}
