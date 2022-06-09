import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_app/widgets/sizeconfig.dart';

import '../../../../../data/icons.dart';
import '../../../../../widgets/constants.dart';

class FooterTinder extends StatelessWidget {
  const FooterTinder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SizedBox(
      width: SizeConfig.screenWidth,
      height: 60,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            item_icons.length,
            (index) {
              return Container(
                width: item_icons[index]['size'],
                height: item_icons[index]['size'],
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: white,
                    boxShadow: [
                      BoxShadow(
                          color: grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 10),
                    ]),
                child: Center(
                  child: SvgPicture.asset(
                    item_icons[index]['icon'],
                    width: item_icons[index]['icon_size'],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}