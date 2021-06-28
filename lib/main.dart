import 'package:flutter/material.dart';
import 'package:my_artisan_app/Screens/HomeScreens/artisan_profile.dart';
import 'package:my_artisan_app/Screens/HomeScreens/artisan_screen.dart';
import 'package:my_artisan_app/Screens/HomeScreens/home_category.dart';
import 'package:my_artisan_app/Screens/SignInOptions/forgot_password.dart';
import 'package:my_artisan_app/Screens/SignInOptions/signUp.dart';
import 'file:///C:/Users/GTL-CC-004/Desktop/my_artisan_app/lib/Screens/HomeScreens/artisan_screen.dart';
// import 'package:my_artisan_app/SignInOptions/signIn.dart';
// import 'package:my_artisan_app/SignInOptions/signUp.dart';
import 'package:my_artisan_app/splash_screen.dart';

import 'Screens/SignInOptions/signIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:
            // ForgottenPassword()
            // ArtisanProfilePage()
            // ArtisanPage()
            SplashScreen()

        // HomeCategoryPage()
        // SignUp()
        // SignIn()
        );
  }
}
