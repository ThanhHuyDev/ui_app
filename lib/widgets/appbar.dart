import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_app/widgets/sizeconfig.dart';

// ignore: must_be_immutable
class Appbar extends StatelessWidget {
  Appbar({Key? key, this.title}) : super(key: key);
  String? title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getsizeHeight(50),
      child: Stack(
        children: [
          Center(
              child: Text(title!,
                  style: TextStyle(
                      color: Colors.black, fontSize: getsizeHeight(20)))),
          Positioned(
              left: getsizeWidth(20),
              top: getsizeHeight(7),
              child: InkWell(
                  borderRadius: BorderRadius.circular(7),
                  splashColor: Colors.grey,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: getsizeHeight(40),
                    width: getsizeWidth(40),
                    padding: EdgeInsets.only(left: getsizeWidth(6)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(getsizeHeight(7)),
                        border: Border.all(
                            width: getsizeWidth(1), color: Colors.black12)),
                    child: Icon(Icons.arrow_back_ios,
                      color: Colors.orange[300],
                      size: getsizeHeight(20),
                    ),
                  )))
        ],
      ),
    );
  }
}
