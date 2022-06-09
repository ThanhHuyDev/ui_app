import 'package:flutter/material.dart';

import '../../../widgets/constag.dart';
import '../../../widgets/sizeconfig.dart';

class ButtonDefault extends StatelessWidget {
  ButtonDefault({Key? key, this.title, this.press}) : super(key: key);
  String? title;
  VoidCallback? press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        press!;
      },
      child: Padding(
        padding:
            EdgeInsets.only(left: getsizeWidth(30), right: getsizeWidth(30)),
        child: Container(
          width: double.infinity,
          height: getsizeHeight(50),
          decoration: BoxDecoration(
              gradient: kPrimaryGradientLeftToRightColor,
              borderRadius: BorderRadius.circular(getsizeWidth(20))),
          child: Center(
            child: Text(
              title!,
              style: TextStyle(
                fontSize: getsizeHeight(18),
                fontFamily: 'Muli',
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
