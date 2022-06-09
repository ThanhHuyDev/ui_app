import 'package:flutter/material.dart';
import 'package:ui_app/screens/signin/sign_in_screens.dart';
import 'package:ui_app/widgets/constants.dart';
import 'package:ui_app/widgets/sizeconfig.dart';

class SplashScreens extends StatelessWidget {
  const SplashScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        decoration:
            const BoxDecoration(gradient: kPrimaryGradientTopToBotColor),
        child: Center(
          child: Stack(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignInScreens()));
                },
                child: Image.asset('assets/images/logoSlove.png',
                    height: getsizeHeight(200)),
              ),
              Positioned(
                bottom: getsizeHeight(0),
                child: Text('Nơi thoát kiếp FA',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white60,
                        fontSize: getsizeHeight(20))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
