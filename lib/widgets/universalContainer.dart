import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_artisan_app/widgets/color_constants.dart';
import 'package:page_transition/page_transition.dart';

Container commonContainer({Widget child}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(gradient: ColorConst.splashGradient),
    child: child,
  );
}

appLogo() {
  return Container(
    child: Column(
      children: [
        Image.asset(
          "images/appLogo.png",
          height: 60,
          width: 60,
        ),
        appTitle(),
      ],
    ),
  );
}

Text appTitle() {
  return Text(
    "G.Artisan.",
    style: TextStyle(
        color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
  );
}

Padding authField({
  String hintText,
  IconData icon,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: TextField(
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(
          icon,
          color: Colors.black45,
        ),
        filled: true,
        fillColor: Color(0xffFFFBFA),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}

authButton({
  Function onPress,
  String title,
}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20),
    height: 50,
    child: ElevatedButton(
      onPressed: onPress,
      child: Text(title),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xff0C2A9A))),
    ),
  );
}

categoryCard({String categoryName, String image, Function onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                image,
                height: 100,
                width: 120,
              ),
              Text(categoryName)
            ],
          ),
        ),
      ),
    ),
  );
}

pageToTransit(
    {BuildContext context,
    Widget child,
    PageTransitionType pageTransitionType}) {
  return Navigator.pushReplacement(
    context,
    PageTransition(
      child: child,
      type: pageTransitionType,
      duration: Duration(seconds: 1),
    ),
  );
}

Container searchArtisan() {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    height: 50,
    // padding: EdgeInsets.symmetric(vertical: 40),
    child: TextField(
      decoration: InputDecoration(
          hintText: "Location",
          prefixIcon: Icon(
            FontAwesomeIcons.locationArrow,
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(50))),
    ),
  );
}
