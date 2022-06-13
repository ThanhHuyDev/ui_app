import 'package:flutter/material.dart';

import '../../widgets/constants.dart';
import '../../widgets/responsive.dart';
import '../home/home_screens.dart';

class ProfileSetupScreens3 extends StatefulWidget {
  const ProfileSetupScreens3({Key? key}) : super(key: key);

  @override
  State<ProfileSetupScreens3> createState() => _ProfileSetupScreensState();
}

class _ProfileSetupScreensState extends State<ProfileSetupScreens3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: SizeConfig.screenHeight,
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
                          fontSize: getsizeHeight(17),
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
                  'Your interests',
                  style: TextStyle(
                      fontSize: getsizeHeight(35), fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: getsizeWidth(30)),
                child: Text(
                  'Select a few of your interests and let everyone\nknow what you\'re passionate about',
                  style: TextStyle(fontSize: getsizeHeight(14)),
                ),
              ),
              SizedBox(
                height: getsizeHeight(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: getsizeWidth(30)),
                    child: Column(
                      children: [
                        ItemInterests(title: 'Photography',icons: Icons.camera_alt_outlined,),
                        ItemInterests(title: 'Karaoke',icons: Icons.mic_none_outlined,),
                        ItemInterests(title: 'Cooking',icons: Icons.food_bank_outlined),
                        ItemInterests(title: 'Run',icons: Icons.run_circle_outlined,),
                        ItemInterests(title: 'Art',icons: Icons.cookie_outlined),
                        ItemInterests(title: 'Extreme',icons: Icons.sports_baseball_outlined,),
                        ItemInterests(title: 'Drink',icons: Icons.no_drinks_outlined,),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Padding(
                    padding: EdgeInsets.only(right: getsizeWidth(30)),
                    child: Column(
                      children: [
                        ItemInterests(title: 'Shopping',icons: Icons.shopping_bag_outlined,),
                        ItemInterests(title: 'Yoga',icons: Icons.bubble_chart_outlined),
                        ItemInterests(title: 'Tennis',icons: Icons.sports_baseball_outlined),
                        ItemInterests(title: 'Swimming',icons: Icons.air,),
                        ItemInterests(title: 'Traveling',icons: Icons.terrain_outlined,),
                        ItemInterests(title: 'Music',icons: Icons.music_note_outlined),
                        ItemInterests(title: 'Video games',icons: Icons.videogame_asset_outlined,),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: getsizeHeight(25)),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomeScreens()));
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

class ItemInterests extends StatelessWidget {
  ItemInterests({Key? key, this.title, this.icons}) : super(key: key);
  String? title;
  IconData? icons;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getsizeWidth(140),
      height: getsizeHeight(50),
      margin: EdgeInsets.only(bottom: getsizeHeight(10)),
      padding: EdgeInsets.only(left: getsizeHeight(8),right: getsizeWidth(7)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getsizeWidth(13)),
          border: Border.all(width: getsizeWidth(1), color: Colors.black12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Icon(
          icons,
          color: Colors.deepPurple,
          size: getsizeHeight(20),
        ),
        SizedBox(width: getsizeWidth(5),),
        Text(
          title!,
          style: TextStyle(fontSize: getsizeHeight(15)),
        )
      ]),
    );
  }
}
