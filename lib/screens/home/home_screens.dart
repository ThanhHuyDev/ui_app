import 'package:flutter/material.dart';
import 'package:ui_app/widgets/sizeconfig.dart';

import '../../models/user_model.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);
  @override
  State<HomeScreens> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreens> {
  User? user;
  @override
  Widget build(BuildContext context) {
    user = User.users[0];
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Image.asset(
          'assets/images/logoSlove.png',
          height: getsizeHeight(100),
        ),
        leading: Padding(
          padding: EdgeInsets.only(top: getsizeHeight(5),left: getsizeWidth(7 )),
          child: const CircleAvatar(
              backgroundImage: NetworkImage('https://www.dungplus.com/wp-content/uploads/2019/12/girl-xinh-1-480x600.jpg'),
            ),
          
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.filter_alt_outlined,
                size: getsizeHeight(30),
                color: Colors.deepPurple,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: getsizeWidth(20),
                  right: getsizeWidth(20),
                  top: getsizeHeight(20)),
              child: SizedBox(
                width: SizeConfig.screenWidth,
                height: SizeConfig.screenHeight / 1.5,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(getsizeWidth(20)),
                          image: DecorationImage(
                              image: NetworkImage(user!.imageUrl[0]),
                              fit: BoxFit.cover),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 4,
                              blurRadius: 4,
                              offset: const Offset(4, 4),
                            ),
                          ]),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: getsizeHeight(30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ChoiceButton(
                  icons: Icons.clear,
                ),
                const SizedBox(
                  width: 40,
                ),
                ChoiceButton(icons: Icons.favorite),
              ],
            ),
            Container(
                width: double.infinity,
                height: getsizeHeight(50),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(getsizeWidth(20)),
                        topRight: Radius.circular(getsizeWidth(20))))),
          ],
        ),
      ),
    );
  }
}

class ChoiceButton extends StatelessWidget {
  ChoiceButton({Key? key, this.icons}) : super(key: key);
  IconData? icons;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getsizeWidth(60),
      height: getsizeHeight(60),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 4,
              blurRadius: 4,
            )
          ]),
      child: Icon(
        icons!,
        color: Colors.red,
        size: getsizeHeight(30),
      ),
    );
  }
}
