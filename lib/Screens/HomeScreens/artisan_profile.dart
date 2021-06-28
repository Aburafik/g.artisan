import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_artisan_app/Screens/HomeScreens/artisan_screen.dart';
import 'package:my_artisan_app/widgets/universalContainer.dart';
import 'package:page_transition/page_transition.dart';

class ArtisanProfilePage extends StatefulWidget {
  final dataPass;
  ArtisanProfilePage({this.dataPass});
  @override
  _ArtisanProfilePageState createState() => _ArtisanProfilePageState();
}

class _ArtisanProfilePageState extends State<ArtisanProfilePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Stack(
          children: [
            Center(
              child: commonContainer(
                  child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              appTitle(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: GestureDetector(
                                  child: Icon(
                                    EvaIcons.arrowBack,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                  onTap: () {
                                    pageToTransit(
                                        child: ArtisanPage(),
                                        context: context,
                                        pageTransitionType: PageTransitionType
                                            .rightToLeftWithFade);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      widget.dataPass.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        getInTouchIcons(icon: EvaIcons.email, onPress: () {}),
                        getInTouchIcons(
                            icon: FontAwesomeIcons.sms, onPress: () {}),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.mapMarkedAlt,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Place of Wok",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.timer,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Monday- Sunday",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                            color: Color(0xff11AF45),
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "8AM to 6Pm ",
                          style: TextStyle(
                              color: Color(0xffC2E7C8),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              )),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                height: 200,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Date"),
                      subtitle: Text("dkdldldl"),
                      trailing: Icon(Icons.calendar_today),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    MaterialButton(
                      color: Color(0xff07AB54),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Text("Call now"),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

getInTouchIcons({IconData icon, Function onPress}) {
  return IconButton(
    icon: Icon(
      icon,
      color: Colors.white,
      size: 30,
    ),
    onPressed: onPress,
  );
}
