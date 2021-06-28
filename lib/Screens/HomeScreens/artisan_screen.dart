import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_artisan_app/Screens/HomeScreens/artisan_profile.dart';
import 'package:my_artisan_app/Screens/HomeScreens/home_category.dart';
import 'package:my_artisan_app/Services/network_helper.dart';
import 'package:my_artisan_app/models/artisan_model.dart';
import 'package:my_artisan_app/widgets/universalContainer.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:url_launcher/url_launcher.dart';

// void _launchURL(_url) async =>
//     await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

class ArtisanPage extends StatefulWidget {
  @override
  _ArtisanPageState createState() => _ArtisanPageState();
}

class _ArtisanPageState extends State<ArtisanPage> {
  Future data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Service service = Service();
    data = service.getArtisanData();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: commonContainer(
            child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    appTitle(),
                    IconButton(
                        icon: Icon(
                          Icons.wrap_text_rounded,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          ///Drop down menu here..........
                        })
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: GestureDetector(
                  child: Icon(
                    EvaIcons.arrowBack,
                    color: Colors.white,
                  ),
                  onTap: () {
                    pageToTransit(
                        child: HomeCategoryPage(),
                        context: context,
                        pageTransitionType:
                            PageTransitionType.rightToLeftWithFade);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(
                  "Find Your Artisan",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
              searchArtisan(),
              Expanded(
                  child: FutureBuilder<ArtisanList>(
                future: data,
                builder: (context, AsyncSnapshot<ArtisanList> snapshots) {
                  if (snapshots.hasData) {
                    return ListView.builder(
                        itemCount: snapshots.data.artisanData.length,
                        itemBuilder: (context, index) {
                          final data = snapshots.data.artisanData;

                          return artisanCard(context, data, index);
                        });
                  } else {
                    return Center(
                      child: Text("Loading"),
                    );
                  }
                },
              ))
            ],
          ),
        )),
      ),
    );
  }
}

Card artisanCard(BuildContext context, final data, index) {
  TextStyle textStyle =
      Theme.of(context).textTheme.headline5.copyWith(fontSize: 20);
  return Card(
    child: Padding(
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              aritsanProfileCard(),
              Container(
                height: 60,
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data[index].name,
                      style: textStyle,
                    ),
                    Text(data[index].location)
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 55),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ElevatedButton(onPressed: () {}, child: Text("View")),
                actionElevatedButton(
                    color: Color(0xff2C9D81),
                    buttonName: "View",
                    onPress: () {
                      pageToTransit(
                          context: context,
                          child: ArtisanProfilePage(dataPass: data[index]),
                          pageTransitionType: PageTransitionType.fade);
                    }),
                actionElevatedButton(
                    color: Color(0xffCCA177),
                    buttonName: "Call",
                    onPress: () {
                      // _launchURL("tel:${data[index].contact}");
                    }),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

ElevatedButton actionElevatedButton(
    {Function onPress, String buttonName, Color color}) {
  return ElevatedButton(
    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
    onPressed: onPress,
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 18),
      child: Text(buttonName),
    ),
  );
}

/// Artisan profile card
Container aritsanProfileCard() {
  return Container(
    height: 80,
    width: 80,
    // child: Icon(EvaIcons.person),
    decoration: BoxDecoration(
      color: Colors.grey,
      image: DecorationImage(
        image: AssetImage("images/Carpenter.png"),
        fit: BoxFit.contain,
      ),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(60),
        bottomLeft: Radius.circular(60),
        topRight: Radius.circular(60),
        bottomRight: Radius.circular(20),
      ),
    ),
  );
}
