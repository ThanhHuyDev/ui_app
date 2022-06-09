import 'package:flutter/material.dart';
import 'package:ui_app/screens/home/pages/explore_page/components/footer_tinder.dart';
import 'package:ui_app/screens/home/pages/explore_page/components/tinder_swapcard.dart';
import 'package:ui_app/widgets/sizeconfig.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);
  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: getBody(),
    );
  }
  Widget getBody() {
    return Column(
      children: [
        SizedBox(height: getsizeHeight(10)),
        const TinderCard(),
        SizedBox(height: getsizeHeight(10)),
        const FooterTinder(),
        SizedBox(height: getsizeHeight(10)),
      ],
    );
  }
}
