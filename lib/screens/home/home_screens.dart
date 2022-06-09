import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_app/data/chat_json.dart';
import 'package:ui_app/screens/home/pages/page.dart';
import 'package:ui_app/widgets/sizeconfig.dart';

import '../../widgets/constants.dart';
import '../screens.dart';
class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);
  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: white,
      appBar: getAppBar(),
      body: getBody(),
      bottomSheet: getFooter(),
    );
  }
  
  IndexedStack getBody() {
    return IndexedStack(
      index: pageIndex,
      children: const [
        ExplorePage(),
        LikesPage(),
        ChatPage(),
        ChatPage(),
        AccountPage(),
      ],
    );
  }

  AppBar getAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      title: Image.asset('assets/images/logo_slove_black.png', height: getsizeHeight(140)),
      leading: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProfileUserScreen()));
        },
        child: Padding(
          padding: EdgeInsets.only(top: getsizeHeight(3), left: getsizeWidth(18)),
          child: Container(
            width: getsizeWidth(20),
            height: getsizeHeight(20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(userMessages[0]['img']),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      actions: [IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt_outlined,size: getsizeHeight(28),color: Colors.deepPurple,))],
    );
  }

  Widget getFooter() {
    List bottomItems = [
      pageIndex == 0
          ? "assets/images/explore_active_icon.svg"
          : "assets/images/explore_icon.svg",
      pageIndex == 1
          ? "assets/images/likes_active_icon.svg"
          : "assets/images/likes_icon.svg",
      pageIndex == 2
          ? "assets/images/chat_active_icon.svg"
          : "assets/images/chat_icon.svg",
      pageIndex == 3
          ? "assets/images/chat_active_icon.svg"
          : "assets/images/chat_icon.svg",
      pageIndex == 4
          ? "assets/images/account_active_icon.svg"
          : "assets/images/account_icon.svg",
    ];
    return Container(
      color: Colors.white,
      width: SizeConfig.screenWidth,
      height: getsizeHeight(55),
      child: Padding(
        padding: EdgeInsets.only(left: getsizeWidth(10), right: getsizeWidth(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomItems.length, (index) {
            return IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = index;
                });
              },
              icon: SvgPicture.asset(
                bottomItems[index],
              ),
            );
          }),
        ),
      ),
    );
  }
}