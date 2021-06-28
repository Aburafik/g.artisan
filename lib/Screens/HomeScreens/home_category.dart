import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/GTL-CC-004/Desktop/my_artisan_app/lib/Screens/HomeScreens/artisan_screen.dart';
import 'package:my_artisan_app/widgets/universalContainer.dart';
import 'package:page_transition/page_transition.dart';

class HomeCategoryPage extends StatefulWidget {
  @override
  _HomeCategoryPageState createState() => _HomeCategoryPageState();
}

class _HomeCategoryPageState extends State<HomeCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: commonContainer(
            child: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    appTitle(),
                    CircleAvatar(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Categories",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          categoryCard(
                              categoryName: "Electrician",
                              image: "images/electri.png",
                              onTap: () {
                                pageToTransit(
                                    context: context,
                                    child: ArtisanPage(),
                                    pageTransitionType:
                                        PageTransitionType.fade);
                              }),
                          categoryCard(
                              categoryName: "Plumber",
                              image: "images/plumber.png"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          categoryCard(
                              categoryName: "Carpenter",
                              image: "images/Carpenter.png"),
                          categoryCard(
                              categoryName: "Hair Dresser",
                              image: "images/hair.png"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          categoryCard(
                              categoryName: "Barber", image: "images/bab.png"),
                          categoryCard(
                              categoryName: "Plumber",
                              image: "images/plumber.png"),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
