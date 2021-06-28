import 'package:flutter/material.dart';
import 'package:my_artisan_app/Screens/SignInOptions/signUp.dart';
import 'package:my_artisan_app/widgets/color_constants.dart';
import 'package:my_artisan_app/widgets/universalContainer.dart';
import 'package:page_transition/page_transition.dart';

import 'forgot_password.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: commonContainer(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                appLogo(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Center(
                    child: Text(
                      "Welcome Back",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                authField(hintText: "Email", icon: Icons.email),
                authField(hintText: "Password", icon: Icons.lock),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgottenPassword()));
                    },
                  ),
                ),
                authButton(
                    title: "Sign In",
                    onPress: () {
                      ///authentication here
                    }),
                Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Row(
                    children: [
                      Text(
                        "New User",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        child: Text(
                          "Create an account",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          pageToTransit(
                              context: context,
                              child: SignUp(),
                              pageTransitionType:
                                  PageTransitionType.bottomToTop);
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
