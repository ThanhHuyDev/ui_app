import 'package:flutter/material.dart';
import 'package:ui_app/widgets/responsive.dart';

import '../../../../data/likes_json.dart';
import '../../../../widgets/constants.dart';

class LikesPage extends StatefulWidget {
  const LikesPage({Key? key}) : super(key: key);

  @override
  State<LikesPage> createState() => _LikesPageState();
}

class _LikesPageState extends State<LikesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      padding: EdgeInsets.only(bottom: getsizeHeight(110)),
      children: [
        title_tabLikes(),
        SizedBox(
          height: getsizeHeight(6),
        ),
        const Divider(
          thickness: 0.4,
        ),
        Padding(
          padding: EdgeInsets.only(left: getsizeWidth(4)),
          child: Wrap(
            spacing: 5,
            runSpacing: 5,
            children: List.generate(likes_json.length, (index) {
              return SizedBox(
                width: (SizeConfig.screenWidth - 15) / 2,
                height: getsizeHeight(250),
                child: Stack(
                  children: [
                    Container(
                      width: (SizeConfig.screenWidth - 15) / 2,
                      height: getsizeHeight(250),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(getsizeWidth(20)),
                          image: DecorationImage(
                              image: AssetImage(likes_json[index]['img']),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      width: (SizeConfig.screenWidth - 15) / 2,
                      height: getsizeHeight(250),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(getsizeWidth(20)),
                          gradient: LinearGradient(
                            colors: [
                              black.withOpacity(0.3),
                              black.withOpacity(0),
                            ],
                          )),
                      child: info_Active(index),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }

  Widget info_Active(int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        likes_json[index]['active']
            ? Padding(
                padding: EdgeInsets.only(
                    left: getsizeWidth(10), bottom: getsizeHeight(8)),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: getsizeHeight(2)),
                      width: getsizeWidth(8),
                      height: getsizeHeight(8),
                      decoration: const BoxDecoration(
                          color: green, shape: BoxShape.circle),
                    ),
                    SizedBox(width: getsizeWidth(5)),
                    Text("Recently Active",
                        style: TextStyle(
                          fontSize: getsizeHeight(14),
                          color: white,
                        ))
                  ],
                ),
              )
            : Padding(
                padding: EdgeInsets.only(
                    left: getsizeWidth(10), bottom: getsizeHeight(8)),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: getsizeHeight(2)),
                      width: getsizeWidth(8),
                      height: getsizeHeight(8),
                      decoration: const BoxDecoration(
                          color: kTextColor, shape: BoxShape.circle),
                    ),
                    SizedBox(width: getsizeWidth(5)),
                    Text("Offline",
                        style: TextStyle(
                          fontSize: getsizeHeight(14),
                          color: white,
                        ))
                  ],
                ),
              )
      ],
    );
  }

  Widget title_tabLikes() {
    return Padding(
      padding: EdgeInsets.only(top: getsizeHeight(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "10 Likes",
            style: TextStyle(
                fontSize: getsizeHeight(17),
                fontWeight: FontWeight.bold,
                color: primary),
          ),
          Container(
            margin: EdgeInsets.only(left: getsizeWidth(9)),
            height: getsizeHeight(25),
            width: getsizeWidth(1),
            decoration: BoxDecoration(color: black.withOpacity(0.15)),
          ),
          Text(
            "Top Picks",
            style: TextStyle(
              color: black.withOpacity(0.5),
              fontSize: getsizeHeight(17),
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  Widget getFooter() {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: 90,
      child: Column(
        children: [
          Container(
            width: size.width - 70,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(colors: [
                yellow_one,
                yellow_two,
              ]),
            ),
            child: const Center(
                child: Text(
              "SEE WHO LIKES YOU",
              style: TextStyle(
                  fontSize: 18, color: white, fontWeight: FontWeight.bold),
            )),
          ),
        ],
      ),
    );
  }
}
