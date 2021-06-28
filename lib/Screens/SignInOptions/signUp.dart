import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:my_artisan_app/Screens/HomeScreens/home_category.dart';
import 'package:my_artisan_app/Screens/SignInOptions/signIn.dart';
import 'package:my_artisan_app/widgets/universalContainer.dart';
import 'package:page_transition/page_transition.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: commonContainer(
          child: Center(
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                appLogo(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Center(
                    child: Text(
                      "Welcome!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                authField(hintText: "Email", icon: EvaIcons.email),
                authField(hintText: "Password", icon: EvaIcons.lock),
                authField(hintText: "Confirm password", icon: EvaIcons.lock),
                authButton(
                    title: "Sign Up",
                    onPress: () {
                      ///authentication here
                      pageToTransit(
                          child: HomeCategoryPage(),
                          context: context,
                          pageTransitionType:
                              PageTransitionType.rightToLeftWithFade);
                    }),
                GestureDetector(
                  child: Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        Icon(
                          EvaIcons.arrowBack,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Sign In",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    //move back to signIn page
                    pageToTransit(
                        context: context,
                        child: SignIn(),
                        pageTransitionType: PageTransitionType.topToBottom);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
