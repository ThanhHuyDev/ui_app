import 'package:flutter/material.dart';
import 'package:ui_app/screens/profile_user/profile_user_body.dart';
import 'package:ui_app/widgets/sizeconfig.dart';
class ProfileUserScreen extends StatefulWidget {
  const ProfileUserScreen({Key? key}) : super(key: key);

  @override
  State<ProfileUserScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProfileUserScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return const Scaffold(
      body: BodyProfileUser(),
    );
  }
}