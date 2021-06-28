import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_artisan_app/Screens/SignInOptions/signIn.dart';
import 'package:my_artisan_app/widgets/color_constants.dart';
import 'package:my_artisan_app/widgets/universalContainer.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ////
    Timer(
        Duration(seconds: 3),
        () => pageToTransit(
            context: context,
            child: SignIn(),
            pageTransitionType: PageTransitionType.rightToLeftWithFade));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: ColorConst.splashGradient,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 200),
                child: appLogo(),
              ),
              ///////////
              CircularProgressIndicator(
                backgroundColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
